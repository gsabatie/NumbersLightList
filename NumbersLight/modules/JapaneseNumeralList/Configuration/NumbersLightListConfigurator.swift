//
//  NumbersLightListNumbersLightListConfigurator.swift
//  NumbersLight
//
//  Created by Guillaume on 27/01/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import UIKit

final class JapaneseNumeralListModuleConfigurator {
    
    static func initializePresenter() -> JapaneseNumeralListPresenter {
        var view: JapaneseNumeralListViewProtocol!
        
        let router: JapaneseNumeralListRouter = JapaneseNumeralListRouter()
        view = JapaneseNumeralTableViewController()
        
        let presenter: JapaneseNumeralListPresenter =
            JapaneseNumeralListPresenter(router: router, view: view)
        let interactor: JapaneseNumeralListInteractor =
            JapaneseNumeralListInteractor(output: presenter)
        
        presenter.interactor = interactor
        view.output = presenter
        return presenter
    }
    
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        
        if let viewController = viewInput as? JapaneseNumeralTableViewController {
            configure(viewController: viewController)
        }
    }
    
    private func configure(viewController:JapaneseNumeralTableViewController) {
       
        let router = JapaneseNumeralListRouter()
        router.detailRouter = JapaneseNumeralDetailRouter()
        router.navigationController = viewController.navigationController
        router.splitViewController = viewController.splitViewController

        let presenter: JapaneseNumeralListPresenter =
            JapaneseNumeralListPresenter(router: router, view: viewController)
        let interactor: JapaneseNumeralListInteractor =
            JapaneseNumeralListInteractor(output:presenter)
        
        presenter.interactor = interactor
        viewController.output = presenter
    }
    
}
