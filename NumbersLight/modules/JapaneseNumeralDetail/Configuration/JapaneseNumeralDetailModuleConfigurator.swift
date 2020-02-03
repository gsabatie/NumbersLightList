//
//  NumbersLightDetailNumbersLightDetailConfigurator.swift
//  NumbersLight
//
//  Created by Guillaume on 01/02/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import UIKit

final class JapaneseNumeralDetailModuleConfigurator {
    
    static func initializePresenter() -> JapaneseNumeralDetailPresenter {
        var view: JapaneseNumeralDetailViewProtocol!
        
        let router: JapaneseNumeralDetailRouter = JapaneseNumeralDetailRouter()
        view = JapaneseNumeralDetailViewController()
        
        let presenter: JapaneseNumeralDetailPresenter =
            JapaneseNumeralDetailPresenter(router: router, view: view)
        let interactor: JapaneseNumeralDetailInteractor =
            JapaneseNumeralDetailInteractor(output:presenter)
        
        presenter.interactor = interactor
        view.output = presenter
        return presenter
    }
    
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        
        if let viewController = viewInput as? JapaneseNumeralDetailViewController {
            configure(viewController: viewController)
        }
    }
    
    private func configure(viewController:JapaneseNumeralDetailViewController) {
        let router: JapaneseNumeralDetailRouter = JapaneseNumeralDetailRouter()
        let presenter: JapaneseNumeralDetailPresenter =
            JapaneseNumeralDetailPresenter(router: router, view: viewController)
        let interactor: JapaneseNumeralDetailInteractor =
            JapaneseNumeralDetailInteractor(output:presenter)
        
        presenter.interactor = interactor
        viewController.output = presenter
    }
    
}
