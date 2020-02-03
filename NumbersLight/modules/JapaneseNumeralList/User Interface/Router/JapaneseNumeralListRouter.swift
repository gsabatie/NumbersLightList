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

final class JapaneseNumeralListRouter {
    var detailRouter: JapaneseNumeralDetailRouterProtocol?
    var splitViewController: UISplitViewController?
    var navigationController: UINavigationController?
}

// MARK:  NumbersLightListRouterProtocol 
extension JapaneseNumeralListRouter: JapaneseNumeralListRouterProtocol {
    
     func present(from viewController:UIViewController) {
        let japaneseNumerallistViewController: JapaneseNumeralTableViewController =
            UIStoryboard.loadViewController() as JapaneseNumeralTableViewController
        viewController.present(japaneseNumerallistViewController, animated: true, completion: nil)
     }
    
    func pushDetailView(arabicRepresentation: String) {
        guard let splitViewController: UISplitViewController = self.splitViewController else {
            return
        }
        if splitViewController.viewControllers.count == 1 {
            let detailsLightListViewController: JapaneseNumeralDetailViewController =
                UIStoryboard.loadViewController() as JapaneseNumeralDetailViewController
            if let presenter: JapaneseNumeralDetailPresenter =
                detailsLightListViewController.output as? JapaneseNumeralDetailPresenter
            {
                presenter.presentJapaneseNumeralDetail(arabicRepresentation: arabicRepresentation)
            }
            let navigation = UINavigationController()
            navigation.viewControllers.append(detailsLightListViewController)
            splitViewController.showDetailViewController(navigation, sender: self)
        } else {
            guard let detailsLightListViewController: JapaneseNumeralDetailViewController =
                splitViewController.viewControllers.last as? JapaneseNumeralDetailViewController,
                let presenter: JapaneseNumeralDetailPresenter =
                detailsLightListViewController.output as? JapaneseNumeralDetailPresenter
                else {
                    return
            }
            presenter.presentJapaneseNumeralDetail(arabicRepresentation: arabicRepresentation)
        }
    }
}
