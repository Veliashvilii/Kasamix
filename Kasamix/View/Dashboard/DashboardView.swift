//
//  DashboardView.swift
//  Kasamix
//
//  Created by Metehan Belli on 18.01.2026.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        BaseView(
            title: "Kasamix",
            leftIcon: Image("app_icon")
        ) {
            VStack {
                Text("Dashboard Content")
            }
        }
    }
}

#Preview {
    DashboardView()
}
