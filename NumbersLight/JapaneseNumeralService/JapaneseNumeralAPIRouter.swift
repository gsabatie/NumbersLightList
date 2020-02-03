//
//  NumbersLightService.swift
//  NumbersLight
//
//  Created by guillaume sabatié on 28/01/2020.
//  Copyright © 2020 Guillaume Sabatie. All rights reserved.
//

import Foundation
import Alamofire

enum JapaneseNumeralAPIRouter: URLRequestConvertible {
    static let baseURLString = "https://dev.tapptic.com"
    
    case japaneseNumerals
    
    case japaneseNumeral(arabicRepresentation: String)
    
    func asURLRequest() throws -> URLRequest {
        let result: (path: String, parameters: Parameters?) = {
            switch self {
            case .japaneseNumerals:
               return ("/test/json.php", nil)
            case let .japaneseNumeral(arabicRepresentation):
                let path: String = "/test/json.php"
                let parammeter: Parameters = ["name" : arabicRepresentation]
                return (path, parammeter)
            }
        }()
        
        let url = try JapaneseNumeralAPIRouter.baseURLString.asURL()
        let urlRequest = URLRequest(url: url.appendingPathComponent(result.path))
        
        return try URLEncoding.default.encode(urlRequest, with: result.parameters)
    }
}
