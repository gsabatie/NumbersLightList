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
                self.refreshControl.endRefreshing()
                self.progresshud.dismiss(animated: true)
            }
        }
    }
    // MARK: Private instance variable
    private var progresshud: JGProgressHUD = JGProgressHUD(style: .dark)
    
    private var errorAlertController: UIAlertController =
        UIAlertController(title: "Error", message: nil, preferredStyle: .alert)
    
    private var refreshControl: UIRefreshControl = UIRefreshControl()
    
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        NumberLightTableViewCell.register(tableView: &self.tableView)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.splitViewController?.preferredDisplayMode = .allVisible
        
        self.refreshControl
            .addTarget(
                self,
                action: #selector(didRefresh(_:)),
                for: UIControl.Event.valueChanged)
        self.tableView.addSubview(self.refreshControl)
        
        self.errorAlertController.addAction(UIAlertAction(title: "Ok", style: .default) {
            (allertAction: UIAlertAction) in
            self.errorAlertController.dismiss(animated: true, completion: nil)
        })
        
        self.output?.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.output?.viewDidAppear()
        super.viewDidAppear(true)
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
    
    @objc private func didRefresh(_ refreshControl: UIRefreshControl) {
        self.output?.didRefreshTableView()
    }
}

// MARK: - Extension UITableViewDelegate
extension NumbersLightListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.output?.didSelectRowat(index: indexPath)
    }
    
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
        if self.numberLight.isEmpty  {
            tableView.displayEmptyView(
                title: "You are not connected to internet",
                message: "Content will appear here")
        }
        else {
            tableView.deleteEmptyView()
        }
        return self.numberLight.count
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
// MARK: - extension NumbersLightListViewProtocol
extension NumbersLightListViewController: NumbersLightListViewProtocol {
    func display(errorMessage: String) {
        self.errorAlertController.message = errorMessage
        if !self.errorAlertController.isBeingPresented {
            self.present(self.errorAlertController, animated: true, completion: nil)
        }
    }
}

// MARK: - private extension
private extension UITableView {
    func  numberLightTableViewCellForRow(at indexPath: IndexPath) -> NumberLightTableViewCell? {
        guard let cell: NumberLightTableViewCell = self.cellForRow(at: indexPath) as? NumberLightTableViewCell else {
            return nil
        }
        return cell
    }
    
}


private extension UITableView {
    func displayEmptyView(title: String, message: String) {
        let emptyView: UIView =
            UIView(
                frame: CGRect(x: self.center.x,
                              y: self.center.y,
                              width: self.bounds.size.width,
                              height: self.bounds.size.height))
        
        let titleLabel: UILabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textColor = UIColor.black
        titleLabel.font = UIFont(name: "System", size: 18)
        titleLabel.text = title
        
        let messageLabel: UILabel = UILabel()
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.textColor = UIColor.lightGray
        messageLabel.font = UIFont(name: "System", size: 17)
        messageLabel.text = message
        messageLabel.numberOfLines = 0
        messageLabel.textAlignment = .center
        
        emptyView.addSubview(titleLabel)
        emptyView.addSubview(messageLabel)
        
        titleLabel.centerYAnchor.constraint(equalTo: emptyView.centerYAnchor).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: emptyView.centerXAnchor).isActive = true
        messageLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        messageLabel.leftAnchor.constraint(equalTo: emptyView.leftAnchor, constant: 20).isActive = true
        messageLabel.rightAnchor.constraint(equalTo: emptyView.rightAnchor, constant: -20).isActive = true
        
        
        self.backgroundView = emptyView
        self.separatorStyle = .none
    }
    
    func deleteEmptyView() {
        self.backgroundView = nil
        self.separatorStyle = .singleLine
    }
}
