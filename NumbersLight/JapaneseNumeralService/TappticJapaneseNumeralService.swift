//
//  JapaneseNumeralService.swift
//  JapaneseNumeral
//
//  Created by guillaume sabatié on 28/01/2020.
//  Copyright © 2020 Guillaume Sabatie. All rights reserved.
//

import Foundation
import Alamofire
import EasyOSLogger

typealias JapaneseNumeralsCompletionBlock = (Swift.Result<[JapaneseNumeral], Error>) -> ()
typealias JapaneseNumeralCompletionBlock = (Swift.Result<JapaneseNumeral, Error>) -> ()

//sourcery: AutoMockable
protocol JapaneseNumeralService {
    func getJapaneseNumerals(completion: @escaping JapaneseNumeralsCompletionBlock)
    func getJapaneseNumeral(arabicRepresentation: String, completion: @escaping JapaneseNumeralCompletionBlock)
}


struct TappticJapaneseNumeralService: JapaneseNumeralService {
    
    let jsonDecoder: JSONDecoder = JSONDecoder()
    
    func getJapaneseNumerals(completion: @escaping JapaneseNumeralsCompletionBlock) {
        Alamofire.request(JapaneseNumeralAPIRouter.japaneseNumerals).responseJSON {
            (response: DataResponse<Any>) in
            Log.debug(response.debugDescription, category: .network)
            switch response.result {
            case .success:
                if let data: Data = response.data {
                    do {
                    let japaneseNumerals: [JapaneseNumeral] =
                        try self.jsonDecoder.decode([JapaneseNumeral].self, from: data)
                
                        completion(.success(japaneseNumerals))
                    } catch let error {
                        completion(.failure(error))
                    }
                }
                case .failure(let error):
                    completion(.failure(error))
            }
        }
    }
    
    func getJapaneseNumeral(
        arabicRepresentation: String,
        completion: @escaping JapaneseNumeralCompletionBlock
    ) {
        Alamofire
            .request(
                JapaneseNumeralAPIRouter.japaneseNumeral(arabicRepresentation: arabicRepresentation))
            .responseJSON {
                (response: DataResponse<Any>) in
                Log.debug(response.debugDescription, category: .network)
                switch response.result {
                case .success:
                    if let data: Data = response.data {
                        do {
                        let japaneseNumerals: JapaneseNumeral =
                            try self.jsonDecoder.decode(JapaneseNumeral.self, from: data)
                            completion(.success(japaneseNumerals))
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
