//
//  SubtitleText.swift
//  Kasamix
//
//  Created by Metehan Belli on 18.01.2026.
//

import SwiftUI

struct SubtitleText: View {

    let text: String
    var color: Color = AppColor.secondaryTextColor
    var font: Font = AppFont.regular(14)
    var alignment: TextAlignment = .leading

    var body: some View {
        Text(text)
            .font(font)
            .foregroundColor(color)
            .multilineTextAlignment(alignment)
    }
}


#Preview {
    SubtitleText(text: "Subtitle")
}
