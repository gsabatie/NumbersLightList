//
//  NumbersLightListNumbersLightListRouterSpecs.swift
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

final class JapaneseNumeralListRouterSpecs: QuickSpec {
   var router: JapaneseNumeralListRouter!

   override func spec() {
    
   }
}

extension JapaneseNumeralListRouter {
    
    static func forTest() -> JapaneseNumeralListRouter {
       let router = JapaneseNumeralListRouter()
       
       return router
    }
}
