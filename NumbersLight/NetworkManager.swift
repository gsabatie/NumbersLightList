//
//  NetworkManager.swift
//  NumbersLight
//
//  Created by guillaume sabatié on 30/01/2020.
//  Copyright © 2020 Guillaume Sabatie. All rights reserved.
//

import Foundation
import SystemConfiguration

protocol NetworkReachabilityDelegate {
    func networkManagerReachabilityDidChange(
        networkManager: NetworkManager,
        status: NetworkManager.ReachabilityStatus)
}

final class NetworkManager: NSObject {
    enum ConnectionType {
        case WWAN
        case Wifi
    }
    enum ReachabilityStatus {
        case reachable(ConnectionType)
        case notReachable
        
        static func from(flags: SCNetworkReachabilityFlags) -> ReachabilityStatus {
            if flags.contains(.reachable) == false {
                   // The target host is not reachable.
                   return .notReachable
               }
               else if flags.contains(.isWWAN) == true {
                   // WWAN connections are OK if the calling application is using the CFNetwork APIs.
                return .reachable(.WWAN)
               }
               else if flags.contains(.connectionRequired) == false {
                   // If the target host is reachable and no connection is required then we'll assume that you're on Wi-Fi...
                return .reachable(.Wifi)
               }
               else if (flags.contains(.connectionOnDemand) == true || flags.contains(.connectionOnTraffic) == true) && flags.contains(.interventionRequired) == false {
                   // The connection is on-demand (or on-traffic) if the calling application is using the CFSocketStream or higher APIs and no [user] intervention is needed
                return .reachable(.Wifi)
               }
               else {
                   return .notReachable
               }
        }
    }
    
    var reachability: SCNetworkReachability?
    
    var delegate: NetworkReachabilityDelegate?

    private var isNotifying: Bool = false
    
    private var flags: SCNetworkReachabilityFlags {
    
       var flags = SCNetworkReachabilityFlags(rawValue: 0)
    
       if let reachability = reachability,
        withUnsafeMutablePointer(
            to: &flags,
            { SCNetworkReachabilityGetFlags(reachability, UnsafeMutablePointer($0)) }) == true {
           return flags
       }
       else {
           return []
       }
    }
    
    init?(hostName: String) {
        guard let hostNameUTF8 = (hostName as NSString).utf8String else { return nil }
        self.reachability = SCNetworkReachabilityCreateWithName(kCFAllocatorDefault, hostNameUTF8)
        guard reachability != nil else { return nil }
        super.init()
    }
    
    init?(hostAddress: sockaddr_in) {
        var address = hostAddress
     
        guard
            let defaultRouteReachability =
            withUnsafePointer(
                to: &address,
                { $0.withMemoryRebound(to: sockaddr.self, capacity: 1)
                {
                    SCNetworkReachabilityCreateWithAddress(kCFAllocatorDefault, $0)
                    }
            })
        else { return nil }
     
        self.reachability = defaultRouteReachability
        guard reachability != nil else { return nil }
        super.init()
    }
    
    func startNotifier() -> Bool {
        
        guard self.isNotifying == false else { return false }
        
        var context = SCNetworkReachabilityContext()
        context.info = UnsafeMutableRawPointer(Unmanaged.passUnretained(self).toOpaque())
        
        guard
            let reachability = self.reachability,
            SCNetworkReachabilitySetCallback(
                reachability,
                {(target: SCNetworkReachability, flags: SCNetworkReachabilityFlags, info: UnsafeMutableRawPointer?)
                    in
                    if let currentInfo = info {
                        let infoObject =
                            Unmanaged<AnyObject>.fromOpaque(currentInfo).takeUnretainedValue()
                        if let networkManager: NetworkManager = infoObject as? NetworkManager {
                            
                            var flags = SCNetworkReachabilityFlags(rawValue: 0)
                            
                            if let reachability = networkManager.reachability,
                                withUnsafeMutablePointer(
                                    to: &flags,
                                    { SCNetworkReachabilityGetFlags(reachability, UnsafeMutablePointer($0)) }) == true {
                                networkManager.delegate?.networkManagerReachabilityDidChange(networkManager: networkManager, status: ReachabilityStatus.from(flags: flags))
                            }
                            else {
                                networkManager.delegate?.networkManagerReachabilityDidChange(networkManager: networkManager, status: .notReachable)
                            }
                        }
                    }
            },
            &context) == true
        else { return false }
        
        guard SCNetworkReachabilityScheduleWithRunLoop(reachability, CFRunLoopGetCurrent(), CFRunLoopMode.defaultMode.rawValue) == true else { return false }
        
        self.isNotifying = true
        return self.isNotifying
    }
}
