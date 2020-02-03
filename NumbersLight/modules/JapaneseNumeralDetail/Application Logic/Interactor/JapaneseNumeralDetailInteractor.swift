//
//  NumbersLightDetailNumbersLightDetailInteractor.swift
//  NumbersLight
//
//  Created by Guillaume on 01/02/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import Foundation

final class JapaneseNumeralDetailInteractor {
    
    // MARK: Dependency inversion variable 
    weak var output: JapaneseNumeralDetailInteractorOutputProtocol?
    
    // MARK: Instance Variable
    var japaneseNumeralService: JapaneseNumeralService
    // MARK: Constructors
    init(output: JapaneseNumeralDetailInteractorOutputProtocol? = nil,
         japaneseNumeralService: JapaneseNumeralService = TappticJapaneseNumeralService()) {
        self.output = output
        self.japaneseNumeralService = japaneseNumeralService
    }
}

// MARK: NumbersLightDetailUseCaseProtocol
extension JapaneseNumeralDetailInteractor: JapaneseNumeralDetailUseCaseProtocol {
    
    func getJapaneseNumeral(
        arabicRepresentation: String,
        completion: @escaping JapaneseNumeralCompletionBlock
    ) {
        self.japaneseNumeralService
            .getJapaneseNumeral(arabicRepresentation: arabicRepresentation, completion: completion)
    }
}
