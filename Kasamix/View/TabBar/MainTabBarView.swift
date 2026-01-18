//
//  MainTabBarView.swift
//  Kasamix
//
//  Created by Metehan Belli on 18.01.2026.
//

import SwiftUI

struct MainTabBarView: View {
    
    @State private var selectedTab: TabItem = .dashboard
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            DashboardView()
                .tabItem {
                    Image(TabItem.dashboard.icon)
                    Text(TabItem.dashboard.title)
                }
                .tag(TabItem.dashboard)
            
            ProductView()
                .tabItem {
                    Image(TabItem.product.icon)
                    Text(TabItem.product.title)
                }
                .tag(TabItem.product)
            
            SellView()
                .tabItem {
                    Image(TabItem.sell.icon)
                    Text(TabItem.sell.title)
                }
                .tag(TabItem.sell)
            
            StockView()
                .tabItem {
                    Image(TabItem.stock.icon)
                    Text(TabItem.stock.title)
                }
                .tag(TabItem.stock)
        }
        .tint(AppColor.secondaryTextColor)
    }
}
