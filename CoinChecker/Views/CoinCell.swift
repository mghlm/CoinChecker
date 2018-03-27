//
//  CoinCell.swift
//  CoinChecker
//
//  Created by magnus holm on 27/03/2018.
//  Copyright © 2018 Magnus Holm. All rights reserved.
//

import UIKit
import SnapKit 

class CoinCell: UITableViewCell {
    
    // MARK: - Private properties
    
    fileprivate var coinLogo: UIImageView!
    fileprivate var nameLabel: UILabel!
    fileprivate var priceLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - Private methods
    
    fileprivate func setupUI() {
        nameLabel = UILabel()
        nameLabel.text = "Bitcoin"
        nameLabel.textColor = .black
        addSubview(nameLabel)
        
        setupConstraints()
    }
    
    fileprivate func setupConstraints() {
        
        
        
    }

}
