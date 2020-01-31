//
//  NumberLightServiceSpecs.swift
//  NumbersLightTests
//
//  Created by guillaume sabatié on 28/01/2020.
//  Copyright © 2020 Guillaume Sabatie. All rights reserved.
//

import Foundation
import Quick
import Nimble
import CoreLocation

@testable import NumbersLight

final class NumberLightServiceSpecs: QuickSpec {
    
    override func spec() {
        describe("Get test Objects") {
            let numberLightService: NumberLightService = NumberLightService()
            it("should return a list of numberLight object") {
                numberLightService.getTestObject{
                    (result: Result<[NumberLight], Error>) in
                    expect(try? result.get().count) > 0
                }
            }
        }
    }
}
