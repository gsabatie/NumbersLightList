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

final class NumbersLightDetailViewController: UIViewController, StoryboardLoadable {
    
    // MARK: IBOutlet
    @IBOutlet weak private var imageView: UIImageView!
    
    @IBOutlet weak private var nameLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    
    // MARK: Dependency inversion variable
    var output: NumbersLightDetailViewEventResponderProtocol?
    
    // MARK: Instance variable
    var numberLight: NumberLight? {
        didSet {
            guard let numberLight: NumberLight = self.numberLight  else {
                return
            }
            if let text: String = numberLight.text {
                self.textLabel.text = text
            }
            if let name: String = numberLight.name {
                self.nameLabel.text = name
            }
            
            if let imageName: String = numberLight.imageName,
                let url: URL = URL(string: imageName){
                self.imageView.af_setImage(withURL: url)
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
extension NumbersLightDetailViewController: NumbersLightDetailViewProtocol {}
