//
//  NumbersLightListNumbersLightListInitializer.swift
//  NumbersLight
//
//  Created by Guillaume on 27/01/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import UIKit

final class NumbersLightListModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var numberslightlistViewController: NumbersLightListViewController!

    override func awakeFromNib() {

        let configurator = NumbersLightListModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: numberslightlistViewController)
    }

}
