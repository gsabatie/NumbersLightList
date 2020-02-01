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

    var presenter: NumbersLightDetailPresenter!
    var interactorMock: NumbersLightDetailUseCaseProtocolMock!
    var viewMock: NumbersLightDetailViewProtocolMock!
    var router: NumbersLightDetailRouterProtocolMock!

    override func spec() {
    
    }
}

extension NumbersLightDetailPresenter {
    static func forTest(interactorMock: inout NumbersLightDetailUseCaseProtocol!,
                         routerMock: NumbersLightDetailRouterProtocol?,
                         viewMock: NumbersLightDetailViewProtocol?) -> NumbersLightDetailPresenter {
       let presenter = NumbersLightDetailPresenter(interactor: interactorMock, router: routerMock, view: viewMock)
       
       return presenter
    }
}

fileprivate extension NumbersLightDetailUseCaseProtocolMock {

}

fileprivate extension NumbersLightDetailViewProtocolMock {
    
}

fileprivate extension NumbersLightDetailRouterProtocolMock {
    
}
