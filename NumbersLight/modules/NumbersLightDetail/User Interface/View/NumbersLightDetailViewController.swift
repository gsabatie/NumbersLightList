//
//  NumbersLightDetailNumbersLightDetailViewController.swift
//  NumbersLight
//
//  Created by Guillaume on 01/02/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import UIKit

import StoryboardLoadable

final class NumbersLightDetailViewController: UIViewController, StoryboardLoadable {

    // MARK: Dependency inversion variable 
    var output: NumbersLightDetailViewEventResponderProtocol?

    // MARK: Instance variable

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.output?.viewDidLoad()
    }
}

// MARK: NumbersLightDetailViewProtocol
extension NumbersLightDetailViewController: NumbersLightDetailViewProtocol {

}
