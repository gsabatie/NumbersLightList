//
//  NumbersLightListNumbersLightListInteractor.swift
//  NumbersLight
//
//  Created by Guillaume on 27/01/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import Foundation

final class NumbersLightListInteractor {
 
    // MARK: Dependency inversion variable 
    weak var output: NumbersLightListInteractorOutputProtocol?

    // MARK: Instance Variable
     var numberLightService: NumberLightWebService

    // MARK: Constructors
    init(
        output: NumbersLightListInteractorOutputProtocol? = nil,
        numberLightService: NumberLightWebService = NumberLightService()) {
        self.output = output
        self.numberLightService = numberLightService
    }
}

// MARK: NumbersLightListUseCaseProtocol
extension NumbersLightListInteractor: NumbersLightListUseCaseProtocol {
    func getLightNumber(completion: @escaping NumberLightCompletionBlock) {
        self.numberLightService.getTestObject {
            (result: Result<[NumberLight], Error>) in
            completion(result)
        }
    }
}
