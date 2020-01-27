//
//  NumbersLightListNumbersLightListviewcontrollerSpecs.swift
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

final class NumbersLightListViewControllerSpecs: QuickSpec {

    var viewController: NumbersLightListViewController!
    var presenter: NumbersLightListViewEventResponderProtocolMock!

    override func spec() {
    
    }
}

extension NumbersLightListViewController {
    static func forTest(presenterMock: inout NumbersLightListViewEventResponderProtocol) -> NumbersLightListViewController  {
           let viewController = NumbersLightListViewController()
           viewController.output = presenterMock
       
           return viewController
    }
}

fileprivate extension NumbersLightListViewEventResponderProtocolMock {

}