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

}

// MARK:  NumbersLightDetailRouterProtocol 
extension NumbersLightDetailRouter: NumbersLightDetailRouterProtocol {
     func present(from viewController:UIViewController) {
        let numberslightdetailViewController =  UIStoryboard.loadViewController() as NumbersLightDetailViewController
        viewController.present(numberslightdetailViewController, animated: true, completion: nil)
     }
}
