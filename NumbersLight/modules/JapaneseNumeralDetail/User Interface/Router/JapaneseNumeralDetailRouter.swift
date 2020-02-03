//
//  NumbersLightDetailNumbersLightDetailRouter.swift
//  NumbersLight
//
//  Created by Guillaume on 01/02/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import Foundation
import UIKit

import StoryboardLoadable

final class JapaneseNumeralDetailRouter {
    var name: String?
}

// MARK:  NumbersLightDetailRouterProtocol 
extension JapaneseNumeralDetailRouter: JapaneseNumeralDetailRouterProtocol {
    func present(arabicRepresentation: String, from viewController:UIViewController) {
        let numberslightdetailViewController = UIStoryboard.loadViewController() as JapaneseNumeralDetailViewController
        guard let presenter = numberslightdetailViewController.output as? JapaneseNumeralDetailPresenter else {
            return
        }
        presenter.presentJapaneseNumeralDetail(arabicRepresentation: arabicRepresentation)
        viewController.present(numberslightdetailViewController, animated: true, completion: nil)
    }
    
    func push(arabicRepresentation: String, from navigationController:UINavigationController) {
        let numberslightdetailViewController =  UIStoryboard.loadViewController() as JapaneseNumeralDetailViewController
        guard let presenter = numberslightdetailViewController.output as? JapaneseNumeralDetailPresenter else {
            return
        }
        presenter.presentJapaneseNumeralDetail(arabicRepresentation: arabicRepresentation)
        navigationController.pushViewController(numberslightdetailViewController, animated: true)
        
    }
}
