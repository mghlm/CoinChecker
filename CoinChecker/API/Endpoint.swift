//
//  Endpoint.swift
//  CoinChecker
//
//  Created by Magnus Holm on 11/02/2018.
//  Copyright © 2018 Magnus Holm. All rights reserved.
//

import Foundation

protocol Endpoint {
    var baseUrl: String { get }
    var path: String { get }
    var queryItems: [URLQueryItem] { get }
}

extension Endpoint {
    
    var urlComponent: URLComponents {
        var component = URLComponents(string: baseUrl)
        component?.path = path
        component?.queryItems = queryItems
        
        return component!
    }
    
    var request: URLRequest {
        return URLRequest(url: urlComponent.url!)
    }
}

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
