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
    var navigationController: UINavigationController?
}

// MARK:  NumbersLightListRouterProtocol 
extension NumbersLightListRouter: NumbersLightListRouterProtocol {
     func present(from viewController:UIViewController) {
        let numberslightlistViewController =  UIStoryboard.loadViewController() as NumbersLightListViewController
        viewController.present(numberslightlistViewController, animated: true, completion: nil)
     }
    
    func pushDetailView(name: String) {
        guard let navigationController: UINavigationController = self.navigationController else {
            return
        }
        self.detailRouter?.push(name: name, from: navigationController)
    }
}
