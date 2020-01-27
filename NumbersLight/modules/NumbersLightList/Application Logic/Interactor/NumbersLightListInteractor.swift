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

    // MARK: Constructors
    init(output: NumbersLightListInteractorOutputProtocol? = nil) {
        self.output = output
    }
}

// MARK: NumbersLightListUseCaseProtocol
extension NumbersLightListInteractor: NumbersLightListUseCaseProtocol {

}
