//
//  NumbersLightListNumbersLightListProtocols.swift
//  NumbersLight
//
//  Created by Guillaume on 27/01/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import UIKit

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
}

//sourcery: AutoMockable
protocol NumbersLightListPresentationProtocol: class {

}

//sourcery: AutoMockable
protocol NumbersLightListUseCaseProtocol: class {
    func getLightNumber(completion: @escaping NumberLightCompletionBlock)

}

//sourcery: AutoMockable
protocol NumbersLightListInteractorOutputProtocol: class {

}

//sourcery: AutoMockable
protocol NumbersLightListRouterProtocol: class {
    func present(from viewController:UIViewController)
}
