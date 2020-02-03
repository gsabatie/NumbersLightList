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

final class JapaneseNumeralTableViewController: UIViewController, StoryboardLoadable {
    
    // MARK: IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Dependency inversion variable
    var output: JapaneseNumeralListViewEventResponderProtocol?
    
    // MARK: Instance variable
    var japaneseNumerals: [JapaneseNumeral] = [JapaneseNumeral]() {
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

    private var refreshControl: UIRefreshControl = UIRefreshControl()
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        JapaneseNumeralTableViewCell.register(tableView: &self.tableView)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.splitViewController?.preferredDisplayMode = .allVisible
        
        self.refreshControl
            .addTarget(
                self,
                action: #selector(didRefresh(_:)),
                for: UIControl.Event.valueChanged)
        self.tableView.addSubview(self.refreshControl)

        self.output?.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.output?.viewDidAppear()
        super.viewDidAppear(true)
    }
    
    func configure(cell: JapaneseNumeralTableViewCell, japaneseNumeral: JapaneseNumeral) {
        if let arabicRepresentation: String = japaneseNumeral.arabicRepresentation {
            cell.set(arabicRepresenation: arabicRepresentation)
        }
        if let kanjiImageURL: String = japaneseNumeral.kanjiImageURL,
            let url: URL = URL(string: kanjiImageURL)
        {
            cell.set(kanjiImageUrl: url)
        }
    }
    
    @objc private func didRefresh(_ refreshControl: UIRefreshControl) {
        self.output?.didRefreshTableView()
    }
}

// MARK: - Extension UITableViewDelegate
extension JapaneseNumeralTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.output?.didSelectRowat(index: indexPath)
    }
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        guard let cell: JapaneseNumeralTableViewCell =
            tableView.japaneseNumeralTableViewCellForRow(at: indexPath)
            else {
                return
        }
        cell.set(backgroundColor: JapaneseNumeralTableViewCell.Color.highlited)
    }
    
    func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        guard let cell: JapaneseNumeralTableViewCell =
            tableView.japaneseNumeralTableViewCellForRow(at: indexPath)
            else {
                return
        }
        cell.set(backgroundColor: JapaneseNumeralTableViewCell.Color.normal)
    }
}

// MARK: - Extension UITableViewDataSource
extension JapaneseNumeralTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.japaneseNumerals.isEmpty  {
            tableView.displayEmptyView(
                title: "You are not connected to internet",
                message: "Content will appear here")
        }
        else {
            tableView.deleteEmptyView()
        }
        return self.japaneseNumerals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell =
            self.tableView
                .dequeueReusableCell(
                    withIdentifier: JapaneseNumeralTableViewCell.identifier,
                    for: indexPath)
        let japaneseNumeral: JapaneseNumeral = self.japaneseNumerals[indexPath.row]
        if let japaneseNumeralCell: JapaneseNumeralTableViewCell =
            cell as? JapaneseNumeralTableViewCell
        {
            self.configure(cell: japaneseNumeralCell, japaneseNumeral: japaneseNumeral)
        }
        return cell
    }
}
// MARK: - extension NumbersLightListViewProtocol
extension JapaneseNumeralTableViewController: JapaneseNumeralListViewProtocol {}

// MARK: - private extension
private extension UITableView {
    func
        japaneseNumeralTableViewCellForRow(at indexPath: IndexPath)
        -> JapaneseNumeralTableViewCell?
    {
        guard let cell: JapaneseNumeralTableViewCell =
            self.cellForRow(at: indexPath) as? JapaneseNumeralTableViewCell
        else {
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
