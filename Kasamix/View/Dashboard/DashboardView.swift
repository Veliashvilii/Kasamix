//
//  DashboardView.swift
//  Kasamix
//
//  Created by Metehan Belli on 18.01.2026.
//

import SwiftUI
import SwiftData

struct DashboardView: View {

    @Query private var products: [Product]
    @Query private var transactions: [Transaction]

    @State private var viewModel = DashboardViewModel()

    var body: some View {
        BaseView(
            title: "Kasamix",
            leftIcon: Image("app_icon")
        ) {
            VStack(alignment: .leading, spacing: 16) {
                SubtitleText(text: "Gün Özeti")
                DashboardListCell(
                    title: "\(viewModel.dailyTotal) ₺",
                    subtitle: "Günlük Satış",
                    iconName: "dashboard"
                )

                DashboardListCell(
                    title: "\(viewModel.overallTotal) ₺",
                    subtitle: "Toplam Satış",
                    iconName: "dashboard"
                )

                DashboardListCell(
                    title: "\(viewModel.outOfStockCount)",
                    subtitle: "Out of Stock",
                    iconName: "dashboard"
                )
            }
            .onAppear(perform: recalc)
            .onChange(of: products) { _ in recalc() }
            .onChange(of: transactions) { _ in recalc() }
        }
    }

    private func recalc() {
        viewModel.calculate(
            products: products,
            transactions: transactions
        )
    }
}

/*
#Preview {
    DashboardView(products: [], transactions: [])
}
*/
