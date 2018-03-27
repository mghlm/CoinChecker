//
//  CoinTableViewCell.swift
//  CoinChecker
//
//  Created by magnus holm on 27/03/2018.
//  Copyright © 2018 Magnus Holm. All rights reserved.
//

import UIKit
import SnapKit 

class CoinTableViewCell: UITableViewCell {
    
    // MARK: - Private properties
    
    fileprivate var coinLogo: UIImageView!
    fileprivate var nameLabel: UILabel!
    fileprivate var priceLabel: UILabel!
    
    var identifier = "CoinTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
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
        nameLabel.snp.makeConstraints { (make) in
            make.height.equalTo(20)
            make.leading.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(20)
            make.bottom.equalToSuperview().offset(20)
        }
    }

}
