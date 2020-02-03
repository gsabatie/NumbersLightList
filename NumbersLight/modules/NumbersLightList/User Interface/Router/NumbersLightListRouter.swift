//
//  NumbersLightListNumbersLightListRouter.swift
//  NumbersLight
//
//  Created by Guillaume on 27/01/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import Foundation
import UIKit

import StoryboardLoadable

final class NumbersLightListRouter {
    var detailRouter: NumbersLightDetailRouterProtocol?
    var splitViewController: UISplitViewController?
    var navigationController: UINavigationController?
}

// MARK:  NumbersLightListRouterProtocol 
extension NumbersLightListRouter: NumbersLightListRouterProtocol {
    
     func present(from viewController:UIViewController) {
        let numberslightlistViewController: NumbersLightListViewController =
            UIStoryboard.loadViewController() as NumbersLightListViewController
        viewController.present(numberslightlistViewController, animated: true, completion: nil)
     }
    
    func pushDetailView(name: String) {
        guard let splitViewController: UISplitViewController = self.splitViewController else {
            return
        }
        if splitViewController.viewControllers.count == 1 {
            let detailsLightListViewController: NumbersLightDetailViewController =
                UIStoryboard.loadViewController() as NumbersLightDetailViewController
            if let presenter: NumbersLightDetailPresenter =
                detailsLightListViewController.output as? NumbersLightDetailPresenter
            {
                presenter.presentnumberLightDetail(name: name)
            }
            let navigation = UINavigationController()
            navigation.viewControllers.append(detailsLightListViewController)
            splitViewController.showDetailViewController(navigation, sender: self)
        } else {
            guard let detailsLightListViewController: NumbersLightDetailViewController =
                splitViewController.viewControllers.last as? NumbersLightDetailViewController,
                let presenter: NumbersLightDetailPresenter =
                detailsLightListViewController.output as? NumbersLightDetailPresenter
                else {
                    return
            }
            presenter.presentnumberLightDetail(name: name)
        }
    }
}
