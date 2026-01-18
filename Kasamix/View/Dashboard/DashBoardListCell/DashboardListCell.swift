//
//  DashboardListCell.swift
//  Kasamix
//
//  Created by Metehan Belli on 18.01.2026.
//

import SwiftUI

struct DashboardListCell: View {
    
    let title: String
    let subtitle: String
    let iconName: String
    let tintColor: Color = AppColor.primaryTextRedColor
    
    var body: some View {
        HStack(spacing: 12) {
            VStack(alignment: .leading, spacing: 4) {
                SubtitleText(text: subtitle)
                Text(title)
                    .font(AppFont.semiBold(30))
            }
            Spacer()
            Image(iconName)
                .resizable()
                .renderingMode(.template)
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundColor(tintColor)
                .padding(12)
                .background(
                    RoundedRectangle(cornerRadius: 12, style: .continuous)
                        .fill(tintColor.opacity(0.15))
                        .shadow(
                            color: tintColor.opacity(0.25),
                            radius: 4,
                            x: 0,
                            y: 2
                        )
                )

        }
        .padding(16)
        .background(
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(Color.white)
                .shadow(color: Color.black.opacity(0.15),
                        radius: 8,
                        x: 0,
                        y: 4)
        )
        .padding(.horizontal, 16)
    }

}


#Preview {
    DashboardListCell(
        title: "Dashboard",
        subtitle: "ListCell",
        iconName: "dashboard"
    )
}
