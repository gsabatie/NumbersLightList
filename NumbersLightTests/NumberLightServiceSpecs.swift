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
            let numberLightService: TappticJapaneseNumeralService = TappticJapaneseNumeralService()
            it("should return a list of japaneseNumeral object") {
                numberLightService.getJapaneseNumerals {
                    (result: Result<[JapaneseNumeral], Error>) in
                    expect(try? result.get().count) > 0
                }
            }
        }
        describe("Get detail for a test object") {
              let numberLightService: TappticJapaneseNumeralService = TappticJapaneseNumeralService()
            it("should return a list of japaneseNumeral object") {
                numberLightService.getJapaneseNumeral(arabicRepresentation: "1") {
                    (result: Result<JapaneseNumeral, Error>) in
                    expect(try? result.get().arabicRepresentation) == "1"

                }
            }
        }
    }
}
