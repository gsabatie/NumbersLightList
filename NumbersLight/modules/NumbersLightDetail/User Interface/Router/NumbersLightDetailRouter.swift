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

final class NumbersLightDetailRouter {
    var name: String?
}

// MARK:  NumbersLightDetailRouterProtocol 
extension NumbersLightDetailRouter: NumbersLightDetailRouterProtocol {
    func present(name: String, from viewController:UIViewController) {
        let numberslightdetailViewController =  UIStoryboard.loadViewController() as NumbersLightDetailViewController
        guard let presenter = numberslightdetailViewController.output as? NumbersLightDetailPresenter else {
            return
        }
        presenter.presentnumberLightDetail(name: name)
        viewController.present(numberslightdetailViewController, animated: true, completion: nil)
     }
    
    func push(name: String, from navigationController:UINavigationController) {
          let numberslightdetailViewController =  UIStoryboard.loadViewController() as NumbersLightDetailViewController
          guard let presenter = numberslightdetailViewController.output as? NumbersLightDetailPresenter else {
              return
          }
          presenter.presentnumberLightDetail(name: name)
            navigationController.pushViewController(numberslightdetailViewController, animated: true)
         
       }
}
