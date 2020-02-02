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

typealias NumberLightsCompletionBlock = (Swift.Result<[NumberLight], Error>) -> ()
typealias NumberLightCompletionBlock = (Swift.Result<NumberLight, Error>) -> ()

//sourcery: AutoMockable
protocol NumberLightWebService {
    func getTestObjects(completion: @escaping NumberLightsCompletionBlock)
    func getTestObject(name: String, completion: @escaping NumberLightCompletionBlock)
    
}


struct NumberLightService: NumberLightWebService {
    
    let jsonDecoder: JSONDecoder = JSONDecoder()
    
    func getTestObjects(completion: @escaping NumberLightsCompletionBlock) {
        Alamofire.request(NumbersLightAPIRouter.numberLights).responseJSON {
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
    
    func getTestObject(name: String, completion: @escaping NumberLightCompletionBlock) {
        Alamofire.request(NumbersLightAPIRouter.numberLight(name: name)).responseJSON {
                (response: DataResponse<Any>) in
                Log.debug(response.debugDescription, category: .network)
                switch response.result {
                case .success:
                    if let data: Data = response.data {
                        do {
                        let numberLights: NumberLight =
                            try self.jsonDecoder.decode(NumberLight.self, from: data)
                    
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
