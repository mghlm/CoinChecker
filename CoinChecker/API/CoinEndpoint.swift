//
//  CoinEndpoint.swift
//  CoinChecker
//
//  Created by magnus holm on 27/03/2018.
//  Copyright © 2018 Magnus Holm. All rights reserved.
//

import Foundation

enum CoinEndpoint: Endpoint {
    var baseUrl: String {
        return "https://api.coinmarketcap.com"
    }
    
    var path: String {
        return "/v1/ticker"
    }
    
    var queryItems: [URLQueryItem] {
        return []
    }
}
