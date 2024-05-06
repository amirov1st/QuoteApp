//
//  Quote.swift
//  Quote
//
//  Created by Amirov Foma on 03.05.2024.
//

import Foundation

struct QuoteApp: Decodable {
    let qotd_date: String
    let quote: Quote
}

struct Quote: Decodable {
    let author: String
    let body: String
}
