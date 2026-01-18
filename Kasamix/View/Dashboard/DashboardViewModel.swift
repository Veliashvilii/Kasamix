//
//  DashboardViewModel.swift
//  Kasamix
//
//  Created by Metehan Belli on 18.01.2026.
//

import Foundation
import Observation

@Observable
final class DashboardViewModel {

    var dailyTotal: Double = 0
    var overallTotal: Double = 0
    var outOfStockCount: Int = 0

    func calculate(
        products: [Product],
        transactions: [Transaction]
    ) {
        let today = Calendar.current.startOfDay(for: Date())

        dailyTotal = transactions
            .filter { $0.date >= today }
            .reduce(0) { $0 + $1.amount }

        overallTotal = transactions
            .reduce(0) { $0 + $1.amount }

        outOfStockCount = products
            .filter { $0.stock <= 0 }
            .count
    }
}
