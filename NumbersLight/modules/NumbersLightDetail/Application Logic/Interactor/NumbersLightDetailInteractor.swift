//
//  NumbersLightDetailNumbersLightDetailInteractor.swift
//  NumbersLight
//
//  Created by Guillaume on 01/02/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import Foundation

final class NumbersLightDetailInteractor {
    
    // MARK: Dependency inversion variable 
    weak var output: NumbersLightDetailInteractorOutputProtocol?
    
    // MARK: Instance Variable
    var numberLightService: NumberLightWebService
    // MARK: Constructors
    init(output: NumbersLightDetailInteractorOutputProtocol? = nil,
         numberLightService: NumberLightWebService = NumberLightService()) {
        self.output = output
        self.numberLightService = numberLightService
    }
}

// MARK: NumbersLightDetailUseCaseProtocol
extension NumbersLightDetailInteractor: NumbersLightDetailUseCaseProtocol {
    func getNumberLight(name: String, completion: @escaping NumberLightCompletionBlock) {
        self.numberLightService.getTestObject(name: name, completion: completion)
    }
}
