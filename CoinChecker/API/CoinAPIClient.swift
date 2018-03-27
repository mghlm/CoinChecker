//
//  CoinAPIClient.swift
//  CoinChecker
//
//  Created by magnus holm on 27/03/2018.
//  Copyright © 2018 Magnus Holm. All rights reserved.
//

import Foundation

struct CoinAPIClient: APIClient {
    var session: URLSession
    
    init(session: URLSession = URLSession.shared) {
        self.session = session
    }
    
    func coin(with endpoint: CoinEndpoint) {
        let request = endpoint.request
        
        self.fetch(with: request) { (either: Either<Coin, APIError>) in
            switch either {
            case .value:
                
            }
        }
    }
}
