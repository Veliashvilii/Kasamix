//
//  Item.swift
//  Kasamix
//
//  Created by Metehan Belli on 17.01.2026.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
