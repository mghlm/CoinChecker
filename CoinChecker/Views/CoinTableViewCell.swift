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
    
    var coinLogo: UIImageView!
    var nameLabel: UILabel!
    var priceLabel: UILabel!
    
    var identifier = "CoinTableViewCell"

//    override func awakeFromNib() {
//        super.awakeFromNib()
//        setupUI()
//    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
    }
    
//    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    // MARK: - Private methods
    
    fileprivate func setupUI() {
        nameLabel = UILabel()
        addSubview(nameLabel)
        
        setupConstraints()
    }
    
    fileprivate func setupConstraints() {
        nameLabel.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(20)
            make.bottom.equalToSuperview().offset(20)
        }
    }

}
