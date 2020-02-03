//
//  JapaneseNumeral.swift
//  JapaneseNumeral
//
//  Created by guillaume sabatié on 28/01/2020.
//  Copyright © 2020 Guillaume Sabatie. All rights reserved.
//

import Foundation

struct JapaneseNumeral {
    var arabicRepresentation: String?
    var pronunciation: String?
    var kanjiImageURL: String?
}


// MARK: - Extension Codable
extension JapaneseNumeral: Codable {
    
    enum keys: String, CodingKey {
        case name = "name"
        case imageName = "image"
        case text = "text"
    }
    
     init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: keys.self)
        
        let arabicRepresentation: String? = try? container.decode(String.self, forKey: .name)
        let imageURL: String? = try? container.decode(String.self, forKey: .imageName)
        let pronunciation: String? = try? container.decode(String.self, forKey: .text)
        self.init(arabicRepresentation: arabicRepresentation,
                  pronunciation: pronunciation, kanjiImageURL: imageURL)
    }
}

