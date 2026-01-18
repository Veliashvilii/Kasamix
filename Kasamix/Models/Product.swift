//
//  Product.swift
//  Kasamix
//
//  Created by Metehan Belli on 18.01.2026.
//

import Foundation
import SwiftData

@Model
final class Product {
    var name: String
    var stock: Int
    var price: Double

    init(name: String, stock: Int, price: Double) {
        self.name = name
        self.stock = stock
        self.price = price
    }
}
