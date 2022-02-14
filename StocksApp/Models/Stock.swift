//
//  Stock.swift
//  StocksApp
//
//  Created by Metin Atalay on 13.02.2022.
//

import Foundation

struct Stock: Decodable {
    let symbol: String
    let description: String
    let price: Double
    let change: String
}
