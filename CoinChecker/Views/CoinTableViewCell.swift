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
    
    var cellView: UIView!
    var coinLogo: UIImageView!
    var nameLabel: UILabel!
    var priceLabel: UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    // MARK: - Private methods
    
    fileprivate func setupUI() {
        cellView = UIView(frame: CGRect.zero)
        cellView.backgroundColor = .gray
        cellView.layer.cornerRadius = 15
        addSubview(cellView)
        
        coinLogo = UIImageView(image: #imageLiteral(resourceName: "bitcoin"))
        cellView.addSubview(coinLogo)
        
        nameLabel = UILabel()
        cellView.addSubview(nameLabel)
        
        setupConstraints()
    }
    
    fileprivate func setupConstraints() {
        cellView.snp.makeConstraints { (make) in
            make.height.equalTo(80)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(-10)
            make.top.equalToSuperview()
        }
        coinLogo.snp.makeConstraints { (make) in
            make.height.equalTo(40)
            make.width.equalTo(40)
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(20)
        }
        nameLabel.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.leading.equalTo(coinLogo.snp.trailing).offset(20)
        }
    }

}
