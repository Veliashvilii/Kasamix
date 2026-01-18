//
//  Transaction.swift
//  Kasamix
//
//  Created by Metehan Belli on 18.01.2026.
//

import Foundation
import SwiftData

@Model
final class Transaction {
    var productId: PersistentIdentifier
    var amount: Double
    var date: Date

    init(productId: PersistentIdentifier, amount: Double, date: Date) {
        self.productId = productId
        self.amount = amount
        self.date = date
    }
}

