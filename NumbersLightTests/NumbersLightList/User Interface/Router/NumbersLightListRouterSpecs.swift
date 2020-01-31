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

final class NumbersLightListRouterSpecs: QuickSpec {
   var router: NumbersLightListRouter!

   override func spec() {
    
   }
}

extension NumbersLightListRouter {
    
    static func forTest() -> NumbersLightListRouter {
       let router = NumbersLightListRouter()
       
       return router
    }
}
