//
//  NumbersLightDetailNumbersLightDetailInitializer.swift
//  NumbersLight
//
//  Created by Guillaume on 01/02/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import UIKit

final class NumbersLightDetailModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var numberslightdetailViewController: NumbersLightDetailViewController!

    override func awakeFromNib() {

        let configurator = NumbersLightDetailModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: numberslightdetailViewController)
    }

}
