//
//  NumbersLightListNumbersLightListConfigurator.swift
//  NumbersLight
//
//  Created by Guillaume on 27/01/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import UIKit

final class NumbersLightListModuleConfigurator {
    
    static func initializePresenter() -> NumbersLightListPresenter {
        var view: NumbersLightListViewProtocol!
        
        let router = NumbersLightListRouter()
        view =  NumbersLightListViewController()
        
        let presenter = NumbersLightListPresenter(router: router, view: view)
        let interactor = NumbersLightListInteractor(output:presenter)
        
        presenter.interactor = interactor
        view.output = presenter
        return presenter
    }
    
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        
        if let viewController = viewInput as? NumbersLightListViewController {
            configure(viewController: viewController)
        }
    }
    
    private func configure(viewController:NumbersLightListViewController) {
       
        let router = NumbersLightListRouter()
        router.detailRouter = NumbersLightDetailRouter()
        router.navigationController = viewController.navigationController
        router.splitViewController = viewController.splitViewController

        let presenter = NumbersLightListPresenter(router: router, view: viewController)
        let interactor = NumbersLightListInteractor(output:presenter)
        
        presenter.interactor = interactor
        viewController.output = presenter
    }
    
}
