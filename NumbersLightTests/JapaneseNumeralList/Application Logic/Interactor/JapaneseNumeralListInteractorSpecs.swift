//
//  NumbersLightListNumbersLightListInteractorSpecs.swift
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

var japaneseNumeralsForTest: [JapaneseNumeral] =
    [JapaneseNumeral(arabicRepresentation: "1", pronunciation: "ichi", kanjiImageURL: "www.test.com")]


final class NumbersLightListInteractorSpecs: QuickSpec {

    var interactor: JapaneseNumeralListInteractor!
    var presenterMock: JapaneseNumeralListInteractorOutputProtocolMock!
    
    var networkServiceMock: JapaneseNumeralServiceMock!

    override func spec() {
        self.networkServiceMock = JapaneseNumeralServiceMock()
        
       
        describe("get lighNumbers") {
            self.presenterMock = JapaneseNumeralListInteractorOutputProtocolMock()
            self.interactor =
                JapaneseNumeralListInteractor.forTest(presenterMock: &self.presenterMock, numberightServiceMock: &self.networkServiceMock)
            it("should get lightNumbers") {
            
                self.interactor.getJapaneseNumerals {
                    (result: Result<[JapaneseNumeral], Error>) in
                    let numberLight: JapaneseNumeral? = try? result.get().first
                    expect(numberLight?.arabicRepresentation) == japaneseNumeralsForTest.first?.arabicRepresentation
                    expect(numberLight?.kanjiImageURL) == japaneseNumeralsForTest.first?.kanjiImageURL
                }
            }
        }
    }
}

extension JapaneseNumeralListInteractor {
    static func forTest(presenterMock: inout JapaneseNumeralListInteractorOutputProtocolMock,
                        numberightServiceMock: inout JapaneseNumeralServiceMock) -> JapaneseNumeralListInteractor  {
        Perform(
            numberightServiceMock,
            .getJapaneseNumerals(completion: .any, perform: { (completion) in
                   completion(.success(japaneseNumeralsForTest))
               }))
       let interactor =
        JapaneseNumeralListInteractor(output: presenterMock, japaneseNumeralService: numberightServiceMock)

       return interactor
    }
}

fileprivate extension  JapaneseNumeralListInteractorOutputProtocolMock {

}
