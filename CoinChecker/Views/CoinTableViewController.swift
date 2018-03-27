//
//  CoinTableViewController.swift
//  CoinChecker
//
//  Created by Magnus Holm on 11/02/2018.
//  Copyright © 2018 Magnus Holm. All rights reserved.
//

import UIKit

class CoinTableViewController: UITableViewController {
    
    let coinsCollection = ["Bitcoin", "Ethereum"]
    
    // MARK: - Outlets
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Table view data source
    
    fileprivate func setupUI() {
        tableView.backgroundColor = .gray
        tableView.register(CoinTableViewCell.self, forCellReuseIdentifier: "CoinTableViewCell")
        tableView.separatorStyle = .none
        tableView.contentInset = UIEdgeInsetsMake(10, 0, 10, 0)
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coinsCollection.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CoinTableViewCell", for: indexPath) as! CoinTableViewCell
        cell.backgroundColor = .clear
        cell.nameLabel.text = "\(coinsCollection[indexPath.row])"

        return cell
    }

}
