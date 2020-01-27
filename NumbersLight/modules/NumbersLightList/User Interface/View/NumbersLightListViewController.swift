//
//  NumbersLightListNumbersLightListViewController.swift
//  NumbersLight
//
//  Created by Guillaume on 27/01/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import UIKit

import StoryboardLoadable

final class NumbersLightListViewController: UIViewController, StoryboardLoadable {

    // MARK: Dependency inversion variable 
    var output: NumbersLightListViewEventResponderProtocol?

    // MARK: Instance variable

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.output?.viewDidLoad()
    }
}

// MARK: NumbersLightListViewProtocol
extension NumbersLightListViewController: NumbersLightListViewProtocol {

}
