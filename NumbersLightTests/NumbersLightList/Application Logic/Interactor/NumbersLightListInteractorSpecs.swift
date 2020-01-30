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

var numberLightTest = [NumberLight(name: "1", imageName: "test")]


final class NumbersLightListInteractorSpecs: QuickSpec {

    var interactor: NumbersLightListInteractor!
    var presenterMock: NumbersLightListInteractorOutputProtocolMock!
    
    var networkServiceMock: NumberLightWebServiceMock!

    override func spec() {
        self.networkServiceMock = NumberLightWebServiceMock()
        
       
        describe("get lighNumbers") {
            self.presenterMock = NumbersLightListInteractorOutputProtocolMock()
            self.interactor =
                NumbersLightListInteractor.forTest(presenterMock: &self.presenterMock, numberightServiceMock: &self.networkServiceMock)
            it("should get lightNumbers") {
            
                self.interactor.getLightNumber {
                    (result: Result<[NumberLight], Error>) in
                    let numberLight: NumberLight? = try? result.get().first
                    expect(numberLight?.name) == numberLightTest.first?.name
                    expect(numberLight?.imageName) == numberLightTest.first?.imageName
                }
            }
        }
    }
}

extension NumbersLightListInteractor {
    static func forTest(presenterMock: inout NumbersLightListInteractorOutputProtocolMock,
                        numberightServiceMock: inout NumberLightWebServiceMock) -> NumbersLightListInteractor  {
        Perform(
            numberightServiceMock,
            .getTestObject(completion: .any, perform: { (completion) in
                   completion(.success(numberLightTest))
               }))
       let interactor =
        NumbersLightListInteractor(output: presenterMock, numberLightService: numberightServiceMock)

       return interactor
    }
}

fileprivate extension  NumbersLightListInteractorOutputProtocolMock {

}
