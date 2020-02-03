//
//  NumbersLightDetailNumbersLightDetailPresenterSpecs.swift
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


final class NumbersLightDetailPresenterSpecs: QuickSpec {

    var presenter: JapaneseNumeralDetailPresenter!
    var interactorMock: JapaneseNumeralDetailUseCaseProtocolMock!
    var viewMock: JapaneseNumeralDetailViewProtocolMock!
    var router: JapaneseNumeralDetailRouterProtocolMock!

    override func spec() {
    
    }
}

extension JapaneseNumeralDetailPresenter {
    static func forTest(interactorMock: inout JapaneseNumeralDetailUseCaseProtocol!,
                         routerMock: JapaneseNumeralDetailRouterProtocol?,
                         viewMock: JapaneseNumeralDetailViewProtocol?) -> JapaneseNumeralDetailPresenter {
       let presenter = JapaneseNumeralDetailPresenter(interactor: interactorMock, router: routerMock, view: viewMock)
       
       return presenter
    }
}

fileprivate extension JapaneseNumeralDetailUseCaseProtocolMock {

}

fileprivate extension JapaneseNumeralDetailViewProtocolMock {
    
}

fileprivate extension JapaneseNumeralDetailRouterProtocolMock {
    
}
