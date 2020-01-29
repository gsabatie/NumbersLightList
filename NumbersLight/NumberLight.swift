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
    var imageName: String?
}


// MARK: - Extension Codable
extension NumberLight: Decodable {
    
    enum keys: String, CodingKey {
        case name = "name"
        case imageName = "image"
    }
    
     init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: keys.self)
        
        let name: String? = try container.decode(String.self, forKey: .name)
        let imageName: String? = try container.decode(String.self, forKey: .imageName)
        
        self.init(name: name, imageName: imageName)
    }
}

