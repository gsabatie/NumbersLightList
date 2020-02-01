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
   var router: NumbersLightDetailRouter!

   override func spec() {
    
   }
}

extension NumbersLightDetailRouter {
    
    static func forTest() -> NumbersLightDetailRouter {
       let router = NumbersLightDetailRouter()
       
       return router
    }
}
