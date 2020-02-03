//
//  NumbersLightDetailNumbersLightDetailProtocols.swift
//  NumbersLight
//
//  Created by Guillaume on 01/02/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import UIKit

//sourcery: AutoMockable
protocol JapaneseNumeralDetailViewProtocol: class, DisplayErrorMessage{
    var output: JapaneseNumeralDetailViewEventResponderProtocol? {get set}
    
    var japaneseNumeral: JapaneseNumeral? { get set }
    var isLoading: Bool { get set }
}

//sourcery: AutoMockable
protocol JapaneseNumeralDetailViewEventResponderProtocol {
    func viewDidLoad()
    
    func viewDidAppear()
}

//sourcery: AutoMockable
protocol JapaneseNumeralDetailPresentationProtocol: class {
    func presentJapaneseNumeralDetail(arabicRepresentation: String)
}

//sourcery: AutoMockable
protocol JapaneseNumeralDetailUseCaseProtocol: class {
    func getJapaneseNumeral(arabicRepresentation: String, completion: @escaping JapaneseNumeralCompletionBlock)

}

//sourcery: AutoMockable
protocol JapaneseNumeralDetailInteractorOutputProtocol: class {}

//sourcery: AutoMockable
protocol JapaneseNumeralDetailRouterProtocol: class {
    func present(arabicRepresentation: String, from viewController: UIViewController)
    func push(arabicRepresentation: String, from navigationController: UINavigationController)
}
