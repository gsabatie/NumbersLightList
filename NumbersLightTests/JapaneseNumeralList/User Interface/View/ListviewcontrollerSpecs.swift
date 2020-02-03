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

final class JapaneseNumeralListViewControllerSpecs: QuickSpec {

    var viewController: JapaneseNumeralTableViewController!
    var presenter: JapaneseNumeralListViewEventResponderProtocolMock!

    override func spec() {
    
    }
}

extension JapaneseNumeralTableViewController {
    static func forTest(presenterMock: inout JapaneseNumeralListViewEventResponderProtocol) -> JapaneseNumeralTableViewController  {
           let viewController = JapaneseNumeralTableViewController()
           viewController.output = presenterMock
       
           return viewController
    }
}

fileprivate extension JapaneseNumeralListViewEventResponderProtocolMock {

}
