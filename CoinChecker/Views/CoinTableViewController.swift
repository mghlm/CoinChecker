//
//  CoinTableViewController.swift
//  CoinChecker
//
//  Created by Magnus Holm on 11/02/2018.
//  Copyright © 2018 Magnus Holm. All rights reserved.
//

import UIKit

class CoinTableViewController: UITableViewController {
    
    // MARK: - Outlets
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CoinTableViewCell.self, forCellReuseIdentifier: "CoinTableViewCell")
        tableView.reloadData()
        tableView.estimatedRowHeight = 90
        tableView.rowHeight = UITableViewAutomaticDimension
        
    }

    // MARK: - Table view data source
    
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CoinTableViewCell", for: indexPath) as! CoinTableViewCell

        return cell
    }

}
