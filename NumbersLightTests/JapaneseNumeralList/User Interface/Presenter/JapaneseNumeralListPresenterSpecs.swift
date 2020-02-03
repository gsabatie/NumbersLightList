//
//  NumbersLightListNumbersLightListPresenterSpecs.swift
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


final class JapaneseNumeralListPresenterSpecs: QuickSpec {

    var presenter: JapaneseNumeralListPresenter!
    var interactorMock: JapaneseNumeralListUseCaseProtocolMock!
    var viewMock:JapaneseNumeralListViewProtocolMock!
    var router: JapaneseNumeralListRouterProtocolMock!

    override func spec() {
    
    }
}

extension JapaneseNumeralListPresenter {
    static func forTest(interactorMock: inout JapaneseNumeralListUseCaseProtocol!,
                         routerMock: JapaneseNumeralListRouterProtocol?,
                         viewMock: JapaneseNumeralListViewProtocol?) -> JapaneseNumeralListPresenter {
       let presenter = JapaneseNumeralListPresenter(interactor: interactorMock, router: routerMock, view: viewMock)
       
       return presenter
    }
}

fileprivate extension JapaneseNumeralListUseCaseProtocolMock {

}

fileprivate extension JapaneseNumeralListViewProtocolMock {
    
}

fileprivate extension JapaneseNumeralListRouterProtocolMock {
    
}
