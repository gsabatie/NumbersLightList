//
//  NumbersLightService.swift
//  NumbersLight
//
//  Created by guillaume sabatié on 28/01/2020.
//  Copyright © 2020 Guillaume Sabatie. All rights reserved.
//

import Foundation
import Alamofire

enum NumbersLightAPIRouter: URLRequestConvertible {
    static let baseURLString = "http://dev.tapptic.com"
    
    case numberLight
    
    func asURLRequest() throws -> URLRequest {
        let path: String = {
            switch self {
            case .numberLight:
               return "/test/"
            }
        }()
        
        let url = try NumbersLightAPIRouter.baseURLString.asURL()
        let urlRequest = URLRequest(url: url.appendingPathComponent(path))
        
        return try URLEncoding.default.encode(urlRequest, with: nil)
    }
}
