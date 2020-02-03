//
//  JapaneseNumeralTableViewCell.swift
//  JapaneseNumeral
//
//  Created by guillaume sabatié on 29/01/2020.
//  Copyright © 2020 Guillaume Sabatie. All rights reserved.
//

import UIKit
import AlamofireImage

class JapaneseNumeralTableViewCell: UITableViewCell, UITableViewCellRegistrable {
    
    struct Color {
        static var highlited: UIColor  {  UIColor.red }
        static var selected: UIColor { UIColor.blue }
        static var normal: UIColor { UIColor.gray }
    }
    
    static var identifier: String = "JapaneseNumeralTableViewCell"
    static var nibName: String = "JapaneseNumeralTableViewCell"
    
    @IBOutlet weak private var kanjiImageView: UIImageView!
    @IBOutlet weak private var arabicRepresentationLabel: UILabel!
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            self.set(backgroundColor: Color.selected)
        } else {
            self.set(backgroundColor: Color.normal)
        }
    }
    
    func set(kanjiImageUrl: URL) {
        self.kanjiImageView.af_setImage(withURL: kanjiImageUrl)
    }
    
    func set(arabicRepresenation: String) {
        self.arabicRepresentationLabel.text = arabicRepresenation
    }
    
    func set(backgroundColor: UIColor) {
        self.contentView.backgroundColor = backgroundColor
    }
    
}
