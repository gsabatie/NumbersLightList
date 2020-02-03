//
//  NumberLightTableViewCell.swift
//  NumbersLight
//
//  Created by guillaume sabatié on 29/01/2020.
//  Copyright © 2020 Guillaume Sabatie. All rights reserved.
//

import UIKit
import AlamofireImage



class NumberLightTableViewCell: UITableViewCell, UITableViewCellRegistrable {
    
    struct Color {
        static var highlited: UIColor  {  UIColor.red }
        static var selected: UIColor { UIColor.blue }
        static var normal: UIColor { UIColor.gray }
    }
    
    static var identifier: String = "NumberLightTableViewCell"
    static var nibName: String = "NumberLightTableViewCell"
    
    @IBOutlet weak private var lightImageView: UIImageView!
    @IBOutlet weak private var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            self.set(backgroundColor: Color.selected)
        } else {
            self.set(backgroundColor: Color.normal)
        }
        // Configure the view for the selected state
    }
    
    func set(imageURL: URL) {
        self.lightImageView.af_setImage(withURL: imageURL)
    }
    
    func set(name: String) {
        self.nameLabel.text = name
        
    }
    
    func set(backgroundColor: UIColor) {
        self.contentView.backgroundColor = backgroundColor
    }
    
}
