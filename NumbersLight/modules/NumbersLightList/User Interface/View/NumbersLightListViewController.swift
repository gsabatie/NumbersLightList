//
//  NumbersLightListNumbersLightListViewController.swift
//  NumbersLight
//
//  Created by Guillaume on 27/01/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import UIKit

import JGProgressHUD
import StoryboardLoadable

final class NumbersLightListViewController: UIViewController, StoryboardLoadable {
    
    // MARK: IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Dependency inversion variable
    var output: NumbersLightListViewEventResponderProtocol?
    
    // MARK: Instance variable
    var numberLight: [NumberLight] = [NumberLight]() {
        didSet {
            self.tableView.reloadData()
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
    // MARK: Private instance variable
     private var progresshud = JGProgressHUD(style: .dark)
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        NumberLightTableViewCell.register(tableView: &self.tableView)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.output?.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.output?.viewDidAppear()
    }
    
    func configure(cell: NumberLightTableViewCell, numberLight: NumberLight) {
        if let name: String = numberLight.name {
            cell.set(name: name)
        }
        if let numberLightUrlText: String = numberLight.imageName,
            let url: URL = URL(string: numberLightUrlText)
        {
            cell.set(imageURL: url)
        }
    }
}
// MARK: - Extension UITableViewDelegate
extension NumbersLightListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        guard let cell: NumberLightTableViewCell =
            tableView.numberLightTableViewCellForRow(at: indexPath)
            else {
                return
        }
        cell.set(backgroundColor: NumberLightTableViewCell.Color.highlited)
    }
    
    func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        guard let cell: NumberLightTableViewCell =
            tableView.numberLightTableViewCellForRow(at: indexPath)
            else {
                return
        }
        cell.set(backgroundColor: NumberLightTableViewCell.Color.normal)
    }
}

// MARK: - Extension UITableViewDataSource
extension NumbersLightListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.numberLight.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: NumberLightTableViewCell.identifier, for: indexPath)
        let numberLight: NumberLight = self.numberLight[indexPath.row]
        if let numberLightCell: NumberLightTableViewCell = cell as? NumberLightTableViewCell {
            self.configure(cell: numberLightCell, numberLight: numberLight)
        }
        return cell
    }
    
    
}

extension NumbersLightListViewController: NumbersLightListViewProtocol {
    
}

// MARK: private extension
private extension UITableView {
    func  numberLightTableViewCellForRow(at indexPath: IndexPath) -> NumberLightTableViewCell? {
        guard let cell: NumberLightTableViewCell = self.cellForRow(at: indexPath) as? NumberLightTableViewCell else {
            return nil
        }
        return cell
    }
    
}

