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

    var viewController: JapaneseNumeralDetailViewController!
    var presenter: JapaneseNumeralDetailViewEventResponderProtocolMock!

    override func spec() {
    
    }
}

extension JapaneseNumeralDetailViewController {
    static func forTest(presenterMock: inout JapaneseNumeralDetailViewEventResponderProtocol) -> JapaneseNumeralDetailViewController  {
           let viewController = JapaneseNumeralDetailViewController()
           viewController.output = presenterMock
       
           return viewController
    }
}

fileprivate extension JapaneseNumeralListViewEventResponderProtocol {

}
