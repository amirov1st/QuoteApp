//
//  NetworkManager.swift
//  Quote
//
//  Created by Amirov Foma on 03.05.2024.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingError
}

enum List: String {
    case url = "https://favqs.com/api/qotd"
}

final class NetworkManager {
    static let shared = NetworkManager()
    
    func fetchQuotes(url: String, completion: @escaping(Result<Quote, NetworkError>) -> Void) {
        guard let url = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data else {
                completion(.failure(.noData))
                return
            }
            
            do {
                let quoteApp = try JSONDecoder().decode(QuoteApp.self, from: data)
                completion(.success(quoteApp.quote))
            } catch {
                print(error)
            }
        }.resume()
    }
    
    private init() {}
}

