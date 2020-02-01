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
}

//sourcery: AutoMockable
protocol NumbersLightDetailViewEventResponderProtocol {
    func viewDidLoad()
}

//sourcery: AutoMockable
protocol NumbersLightDetailPresentationProtocol: class {

}

//sourcery: AutoMockable
protocol NumbersLightDetailUseCaseProtocol: class {

}

//sourcery: AutoMockable
protocol NumbersLightDetailInteractorOutputProtocol: class {

}

//sourcery: AutoMockable
protocol NumbersLightDetailRouterProtocol: class {
    func present(from viewController:UIViewController)
}