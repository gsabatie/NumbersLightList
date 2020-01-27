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
}

//sourcery: AutoMockable
protocol NumbersLightListViewEventResponderProtocol {
    func viewDidLoad()
}

//sourcery: AutoMockable
protocol NumbersLightListPresentationProtocol: class {

}

//sourcery: AutoMockable
protocol NumbersLightListUseCaseProtocol: class {

}

//sourcery: AutoMockable
protocol NumbersLightListInteractorOutputProtocol: class {

}

//sourcery: AutoMockable
protocol NumbersLightListRouterProtocol: class {
    func present(from viewController:UIViewController)
}