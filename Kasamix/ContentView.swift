//
//  ContentView.swift
//  Kasamix
//
//  Created by Metehan Belli on 17.01.2026.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            
            Text("Title Font (Inter-Bold)")
                .font(AppFont.title(28))
            
            Divider()
            
            Text("Regular - Inter-Regular")
                .font(AppFont.regular(20))
            
            Text("Medium - Inter-Medium")
                .font(AppFont.medium(20))
            
            Text("SemiBold - Inter-SemiBold")
                .font(AppFont.semiBold(20))
            
            Text("Bold - Inter-Bold")
                .font(AppFont.bold(20))
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .padding()
    }
}

#Preview {
    ContentView()
}
