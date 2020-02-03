//
//  NumbersLightDetailNumbersLightDetailInitializer.swift
//  NumbersLight
//
//  Created by Guillaume on 01/02/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import UIKit

final class JapaneseNumeralDetailModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak private var japaneseNumeraldetailViewController: JapaneseNumeralDetailViewController!

    override func awakeFromNib() {

        let configurator = JapaneseNumeralDetailModuleConfigurator()
        configurator
            .configureModuleForViewInput(viewInput: self.japaneseNumeraldetailViewController)
    }

}
