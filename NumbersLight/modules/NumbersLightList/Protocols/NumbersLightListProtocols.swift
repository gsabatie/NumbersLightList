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
protocol NumbersLightListViewProtocol: class{
    var output: NumbersLightListViewEventResponderProtocol? {get set}
    var numberLight: [NumberLight] {get set}
    
    var isLoading: Bool { get set }
    
    func display(errorMessage: String)
}

//sourcery: AutoMockable
protocol NumbersLightListViewEventResponderProtocol {
    
    func viewDidLoad()
    func viewDidAppear()
    
    func didRefreshTableView()
    
    func didSelectRowat(index: IndexPath)
}

//sourcery: AutoMockable
protocol NumbersLightListPresentationProtocol: class {
    func presentLighNumbers()
}

//sourcery: AutoMockable
protocol NumbersLightListUseCaseProtocol: class {
    var isNetworkReachable: Bool { get }
    func getLightNumber(completion: @escaping NumberLightsCompletionBlock)
    

}

//sourcery: AutoMockable
protocol NumbersLightListInteractorOutputProtocol: class {
    func reachabilityDidChange(status:  NetworkReachabilityManager.NetworkReachabilityStatus)

}

//sourcery: AutoMockable
protocol NumbersLightListRouterProtocol: class {
    func present(from viewController:UIViewController)
    func pushDetailView(name: String)
}
