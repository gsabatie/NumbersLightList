//
//  NumbersLightDetailNumbersLightDetailConfigurator.swift
//  NumbersLight
//
//  Created by Guillaume on 01/02/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import UIKit

final class NumbersLightDetailModuleConfigurator {

    static func initializePresenter() -> NumbersLightDetailPresenter {
          var view: NumbersLightDetailViewProtocol!

          let router = NumbersLightDetailRouter()
        view =  NumbersLightDetailViewController()
        
          let presenter = NumbersLightDetailPresenter(router: router, view: view)
          let interactor = NumbersLightDetailInteractor(output:presenter)

          presenter.interactor = interactor
          view.output = presenter
          return presenter
    }

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? NumbersLightDetailViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController:NumbersLightDetailViewController) {
        let router = NumbersLightDetailRouter()
        let presenter = NumbersLightDetailPresenter(router: router, view: viewController)
        let interactor = NumbersLightDetailInteractor(output:presenter)

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
