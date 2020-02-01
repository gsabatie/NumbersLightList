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

    // MARK: Constructors
    init(output: NumbersLightDetailInteractorOutputProtocol? = nil) {
        self.output = output
    }
}

// MARK: NumbersLightDetailUseCaseProtocol
extension NumbersLightDetailInteractor: NumbersLightDetailUseCaseProtocol {

}
