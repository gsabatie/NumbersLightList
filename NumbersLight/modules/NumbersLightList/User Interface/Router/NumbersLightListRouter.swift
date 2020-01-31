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

}

// MARK:  NumbersLightListRouterProtocol 
extension NumbersLightListRouter: NumbersLightListRouterProtocol {
     func present(from viewController:UIViewController) {
        let numberslightlistViewController =  UIStoryboard.loadViewController() as NumbersLightListViewController
        viewController.present(numberslightlistViewController, animated: true, completion: nil)
     }
}
