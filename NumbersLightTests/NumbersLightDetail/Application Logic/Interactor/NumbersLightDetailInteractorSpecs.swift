//
//  NumbersLightDetailNumbersLightDetailInteractorSpecs.swift
//  NumbersLight
//
//  Created by Guillaume on 01/02/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import XCTest
import Quick
import Nimble
import SwiftyMocky

@testable import NumbersLight


final class NumbersLightDetailInteractorSpecs: QuickSpec {

    var interactor: JapaneseNumeralDetailInteractor!
    var presenterMock: JapaneseNumeralDetailInteractorOutputProtocolMock!

    override func spec() {
    
    }
}

extension JapaneseNumeralDetailInteractor {
    static func forTest(presenterMock: inout JapaneseNumeralDetailInteractorOutputProtocolMock) -> JapaneseNumeralDetailInteractor  {
       let interactor = JapaneseNumeralDetailInteractor(output: presenterMock)
       
       return interactor
    }
}

fileprivate extension  JapaneseNumeralDetailInteractorOutputProtocolMock {

}
