//
//  NumberLight.swift
//  NumbersLight
//
//  Created by guillaume sabatié on 28/01/2020.
//  Copyright © 2020 Guillaume Sabatie. All rights reserved.
//

import Foundation

struct NumberLight {
    var name: String?
    var text: String?
    var imageName: String?
}


// MARK: - Extension Codable
extension NumberLight: Codable {
    
    enum keys: String, CodingKey {
        case name = "name"
        case imageName = "image"
        case text = "text"
    }
    
     init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: keys.self)
        
        let name: String? = try? container.decode(String.self, forKey: .name)
        let imageName: String? = try? container.decode(String.self, forKey: .imageName)
        let text: String? = try? container.decode(String.self, forKey: .text)
        self.init(name: name, text: text, imageName: imageName)
    }
}

