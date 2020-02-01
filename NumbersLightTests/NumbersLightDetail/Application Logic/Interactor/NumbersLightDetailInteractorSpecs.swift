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

    var interactor: NumbersLightDetailInteractor!
    var presenterMock: NumbersLightDetailInteractorOutputProtocolMock!

    override func spec() {
    
    }
}

extension NumbersLightDetailInteractor {
    static func forTest(presenterMock: inout NumbersLightDetailInteractorOutputProtocolMock) -> NumbersLightDetailInteractor  {
       let interactor = NumbersLightDetailInteractor(output: presenterMock)
       
       return interactor
    }
}

fileprivate extension  NumbersLightDetailInteractorOutputProtocolMock {

}
