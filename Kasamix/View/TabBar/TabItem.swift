//
//  TabItem.swift
//  Kasamix
//
//  Created by Metehan Belli on 18.01.2026.
//

import Foundation

enum TabItem: Int, CaseIterable {
    case dashboard
    case product
    case sell
    case stock
    
    var title: String {
        switch self {
        case .dashboard: "Dashboard"
        case .product: "Product"
        case .sell: "Sell"
        case .stock: "Stock"
        }
    }
    
    var icon: String {
        switch self {
        case .dashboard: "dashboard"
        case .product: "product"
        case .sell: "sell"
        case .stock: "stock"
        }
    }
}
