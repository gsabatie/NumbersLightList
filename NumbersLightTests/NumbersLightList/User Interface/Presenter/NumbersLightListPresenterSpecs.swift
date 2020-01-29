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


final class NumbersLightListPresenterSpecs: QuickSpec {

    var presenter: NumbersLightListPresenter!
    var interactorMock: NumbersLightListUseCaseProtocolMock!
    var viewMock: NumbersLightListViewProtocolMock!
    var router: NumbersLightListRouterProtocolMock!

    override func spec() {
    
    }
}

extension NumbersLightListPresenter {
    static func forTest(interactorMock: inout NumbersLightListUseCaseProtocol!,
                         routerMock: NumbersLightListRouterProtocol?,
                         viewMock: NumbersLightListViewProtocol?) -> NumbersLightListPresenter {
       let presenter = NumbersLightListPresenter(interactor: interactorMock, router: routerMock, view: viewMock)
       
       return presenter
    }
}

fileprivate extension NumbersLightListUseCaseProtocolMock {

}

fileprivate extension NumbersLightListViewProtocolMock {
    
}

fileprivate extension NumbersLightListRouterProtocolMock {
    
}
