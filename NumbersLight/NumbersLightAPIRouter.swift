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
    static let baseURLString = "https://dev.tapptic.com"
    
    case numberLights
    
    case numberLight(name: String)
    
    func asURLRequest() throws -> URLRequest {
        let result: (path: String, parameters: Parameters?) = {
            switch self {
            case .numberLights:
               return ("/test/json.php", nil)
            case let .numberLight(name):
                let path: String = "/test/json.php"
                let parammeter: Parameters = ["name" : name]
                return (path, parammeter)
            }
        }()
        
        let url = try NumbersLightAPIRouter.baseURLString.asURL()
        let urlRequest = URLRequest(url: url.appendingPathComponent(result.path))
        
        return try URLEncoding.default.encode(urlRequest, with: result.parameters)
    }
}
