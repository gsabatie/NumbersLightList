//
//  NumbersLightDetailNumbersLightDetailviewcontrollerSpecs.swift
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

final class NumbersLightDetailViewControllerSpecs: QuickSpec {

    var viewController: NumbersLightDetailViewController!
    var presenter: NumbersLightDetailViewEventResponderProtocolMock!

    override func spec() {
    
    }
}

extension NumbersLightDetailViewController {
    static func forTest(presenterMock: inout NumbersLightDetailViewEventResponderProtocol) -> NumbersLightDetailViewController  {
           let viewController = NumbersLightDetailViewController()
           viewController.output = presenterMock
       
           return viewController
    }
}

fileprivate extension NumbersLightDetailViewEventResponderProtocolMock {

}