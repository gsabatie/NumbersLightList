//
//  NumbersLightListNumbersLightListInteractorSpecs.swift
//  NumbersLight
//
//  Created by Guillaume on 27/01/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import XCTest
import Quick
import Nimble
import SwiftyMocky

@testable import NumbersLight


final class NumbersLightListInteractorSpecs: QuickSpec {

    var interactor: NumbersLightListInteractor!
    var presenterMock: NumbersLightListInteractorOutputProtocolMock!

    override func spec() {
    
    }
}

extension NumbersLightListInteractor {
    static func forTest(presenterMock: inout NumbersLightListInteractorOutputProtocolMock) -> NumbersLightListInteractor  {
       let interactor = NumbersLightListInteractor(output: presenterMock)
       
       return interactor
    }
}

fileprivate extension  NumbersLightListInteractorOutputProtocolMock {

}
