//
//  Coin.swift
//  CoinChecker
//
//  Created by Magnus Holm on 11/02/2018.
//  Copyright © 2018 Magnus Holm. All rights reserved.
//

import Foundation

struct Coin: Codable {
    let coinId: String
    let coinName: String
    let symbol: String
    let rank: String
    let priceUSD: String
    let priceBTC: String
    let volume24USD: String
    let marketCapUSD: String
    let availableSupply: String
    let totalSupply: String
    let maxSupply: String
    let change1Hour: String
    let change24Hours: String
    let change7Days: String
    let lastUpdated: String
    
    private enum CodingKeys: String, CodingKey {
        case coinId = "id"
        case coinName = "name"
        case symbol = "symbol"
        case rank = "rank"
        case priceUSD = "price_usd"
        case priceBTC = "price_btc"
        case volume24USD = "24h_volume_usd"
        case marketCapUSD = "market_cap_usd"
        case availableSupply = "available_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case change1Hour = "percent_change_1h"
        case change24Hours = "percent_change_24h"
        case change7Days = "percent_change_7d"
        case lastUpdated = "last_updated"
    }
}
