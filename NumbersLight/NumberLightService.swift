//
//  NumberLightService.swift
//  NumbersLight
//
//  Created by guillaume sabatié on 28/01/2020.
//  Copyright © 2020 Guillaume Sabatie. All rights reserved.
//

import Foundation
import Alamofire
import EasyOSLogger

typealias NumberLightCompletionBlock = (Swift.Result<[NumberLight], Error>) -> ()

//sourcery: AutoMockable
protocol NumberLightWebService {
    func getTestObject(completion: @escaping NumberLightCompletionBlock)
}


struct NumberLightService: NumberLightWebService {
    
    let jsonDecoder: JSONDecoder = JSONDecoder()
    
    func getTestObject(completion: @escaping NumberLightCompletionBlock) {
        Alamofire.request(NumbersLightAPIRouter.numberLight).responseJSON {
            (response: DataResponse<Any>) in
            Log.debug(response.debugDescription, category: .network)
            switch response.result {
            case .success:
                if let data: Data = response.data {
                    do {
                    let numberLights: [NumberLight] =
                        try self.jsonDecoder.decode([NumberLight].self, from: data)
                
                        completion(.success(numberLights))
                    } catch let error {
                        completion(.failure(error))
                    }
                }
                case .failure(let error):
                    completion(.failure(error))
            }
        }
    }
}
