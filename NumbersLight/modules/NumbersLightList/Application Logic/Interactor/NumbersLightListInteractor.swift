//
//  NumbersLightListNumbersLightListInteractor.swift
//  NumbersLight
//
//  Created by Guillaume on 27/01/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import Foundation

import Alamofire
import EasyOSLogger

final class NumbersLightListInteractor {
 
    // MARK: Dependency inversion variable 
    weak var output: NumbersLightListInteractorOutputProtocol?

    // MARK: Instance Variable
    var numberLightService: NumberLightWebService
    var isNetworkReachable: Bool {
        guard let manager: NetworkReachabilityManager = self.manager else { return false }
        return manager.isReachable
    }
    
    let manager = NetworkReachabilityManager(host: "www.apple.com")

   

    // MARK: Constructors
    init(
        output: NumbersLightListInteractorOutputProtocol? = nil,
        numberLightService: NumberLightWebService = NumberLightService()) {
        self.output = output
        self.numberLightService = numberLightService
        self.manager?.listener = { status in
             Log.debug("Network Status Changed: \(status)")
            self.output?.reachabilityDidChange(status:  status)
           }

           manager?.startListening()
    }
    
   
}

// MARK: NumbersLightListUseCaseProtocol
extension NumbersLightListInteractor: NumbersLightListUseCaseProtocol {
    func getLightNumber(completion: @escaping NumberLightsCompletionBlock) {
        self.numberLightService.getTestObjects {
            (result: Swift.Result<[NumberLight], Error>) in
            completion(result)
        }
    }
}
