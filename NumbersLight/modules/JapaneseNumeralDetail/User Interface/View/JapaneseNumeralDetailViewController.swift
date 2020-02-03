//
//  NumbersLightDetailNumbersLightDetailViewController.swift
//  NumbersLight
//
//  Created by Guillaume on 01/02/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import UIKit

import JGProgressHUD
import Alamofire
import StoryboardLoadable

final class JapaneseNumeralDetailViewController: UIViewController, StoryboardLoadable {
    
    // MARK: IBOutlet
    @IBOutlet weak private var kanjiImageView: UIImageView!
    
    @IBOutlet weak private var arabicRepresentationLabel: UILabel!
    @IBOutlet weak var pronunciationLabel: UILabel!
    
    // MARK: Dependency inversion variable
    var output: JapaneseNumeralDetailViewEventResponderProtocol?
    
    // MARK: Instance variable
    var japaneseNumeral: JapaneseNumeral? {
        didSet {
            guard let japaneseNumeral: JapaneseNumeral = self.japaneseNumeral else { return }
            if let pronunciation: String = japaneseNumeral.pronunciation {
                self.pronunciationLabel.text = pronunciation
            }
            if let arabicRepresentation: String = japaneseNumeral.arabicRepresentation {
                self.arabicRepresentationLabel.text = arabicRepresentation
            }
            if let imageName: String = japaneseNumeral.kanjiImageURL,
                let url: URL = URL(string: imageName){
                self.kanjiImageView.af_setImage(withURL: url)
            }
        }
    }
    
    var isLoading: Bool = false {
        didSet {
            if self.isLoading {
                self.progresshud.show(in: self.view)
            } else {
                
                self.progresshud.dismiss(animated: true)
            }
        }
    }
    // MARK: Private instance Variable
    private var progresshud: JGProgressHUD = JGProgressHUD(style: .dark)
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.output?.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.output?.viewDidAppear()
        super.viewDidAppear(animated)
    }
}

// MARK: NumbersLightDetailViewProtocol
extension JapaneseNumeralDetailViewController: JapaneseNumeralDetailViewProtocol {}
