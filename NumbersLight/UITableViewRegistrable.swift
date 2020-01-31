//
//  UITableViewRegistrable.swift
//  NumbersLight
//
//  Created by guillaume sabatié on 29/01/2020.
//  Copyright © 2020 Guillaume Sabatie. All rights reserved.
//

import Foundation
import UIKit

protocol UITableViewCellRegistrable {
    static var nibName: String {get}
    static var identifier: String {get}
}


// MARK: - Extension UITableViewCellRegistrable
extension UITableViewCellRegistrable {
    static func register(tableView: inout UITableView) {
        let nib = UINib(nibName: Self.nibName, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: Self.identifier)
    }
}

