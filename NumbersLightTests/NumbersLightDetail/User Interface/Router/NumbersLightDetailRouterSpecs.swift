//
//  NumbersLightDetailNumbersLightDetailRouterSpecs.swift
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

final class NumbersLightDetailRouterSpecs: QuickSpec {
   var router: JapaneseNumeralDetailRouter!

   override func spec() {
    
   }
}

extension JapaneseNumeralDetailRouter {
    
    static func forTest() -> JapaneseNumeralDetailRouter {
       let router = JapaneseNumeralDetailRouter()
       
       return router
    }
}
