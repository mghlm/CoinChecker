//
//  APIClient.swift
//  CoinChecker
//
//  Created by Magnus Holm on 11/02/2018.
//  Copyright © 2018 Magnus Holm. All rights reserved.
//

import Foundation

enum Either<V, E: Error> {
    case value(V)
    case error(E)
}

enum APIError: Error {
    case apiError
    case jsonResponse
    case jsonDecoder
    case unknown(String)
}

protocol APIClient {
    var session: URLSession { get }
    func fetch<V: Codable>(with request: URLRequest, completion: @escaping (Either<V, APIError>) -> Void)
}
