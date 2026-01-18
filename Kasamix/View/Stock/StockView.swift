//
//  StockView.swift
//  Kasamix
//
//  Created by Metehan Belli on 18.01.2026.
//

import SwiftUI

struct StockView: View {
    var body: some View {
        BaseView(
            title: "Kasamix",
            leftIcon: Image("app_icon")
        ) {
            VStack {
                Text("Stock Content")
            }
        }
    }
}

#Preview {
    StockView()
}
