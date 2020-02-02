//
//  NumbersLightDetailNumbersLightDetailProtocols.swift
//  NumbersLight
//
//  Created by Guillaume on 01/02/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import UIKit

//sourcery: AutoMockable
protocol NumbersLightDetailViewProtocol: class{
    var output: NumbersLightDetailViewEventResponderProtocol? {get set}
    
    var numberLight: NumberLight? { get set }
    var isLoading: Bool { get set }
}

//sourcery: AutoMockable
protocol NumbersLightDetailViewEventResponderProtocol {
    func viewDidLoad()
    
    func viewDidAppear()
}

//sourcery: AutoMockable
protocol NumbersLightDetailPresentationProtocol: class {

}

//sourcery: AutoMockable
protocol NumbersLightDetailUseCaseProtocol: class {
    func getNumberLight(name:String, completion: @escaping NumberLightCompletionBlock)

}

//sourcery: AutoMockable
protocol NumbersLightDetailInteractorOutputProtocol: class {

}

//sourcery: AutoMockable
protocol NumbersLightDetailRouterProtocol: class {
    func present(name: String, from viewController:UIViewController)
    func push(name: String, from navigationController:UINavigationController) 
}
