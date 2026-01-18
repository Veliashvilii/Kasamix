//
//  ProductView.swift
//  Kasamix
//
//  Created by Metehan Belli on 18.01.2026.
//

import SwiftUI

struct ProductView: View {
    var body: some View {
        BaseView(
            title: "Kasamix",
            leftIcon: Image("app_icon")
        ) {
            VStack {
                Text("Product Content")
            }
        }
    }
}

#Preview {
    ProductView()
}
