//
//  NumbersLightListNumbersLightListProtocols.swift
//  NumbersLight
//
//  Created by Guillaume on 27/01/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import UIKit
import Alamofire

//sourcery: AutoMockable
protocol JapaneseNumeralListViewProtocol: class, DisplayErrorMessage {
    var output: JapaneseNumeralListViewEventResponderProtocol? {get set}
    var japaneseNumerals: [JapaneseNumeral] {get set}
    
    var isLoading: Bool { get set }
}

//sourcery: AutoMockable
protocol JapaneseNumeralListViewEventResponderProtocol {
    
    func viewDidLoad()
    func viewDidAppear()
    
    func didRefreshTableView()
    
    func didSelectRowat(index: IndexPath)
}

//sourcery: AutoMockable
protocol JapaneseNumeralListPresentationProtocol: class {
    func presentJapaneseNumeralList()
    func presentDetail(japaneseNumeral: JapaneseNumeral)
}

//sourcery: AutoMockable
protocol JapaneseNumeralListUseCaseProtocol: class {
    var isNetworkReachable: Bool { get }
    
    func getJapaneseNumerals(completion: @escaping JapaneseNumeralsCompletionBlock)
}

//sourcery: AutoMockable
protocol JapaneseNumeralListInteractorOutputProtocol: class {
    func reachabilityDidChange(status:  NetworkReachabilityManager.NetworkReachabilityStatus)

}

//sourcery: AutoMockable
protocol JapaneseNumeralListRouterProtocol: class {
    func present(from viewController:UIViewController)
    func pushDetailView(arabicRepresentation: String)
}
