//
//  BaseView.swift
//  Kasamix
//
//  Created by Metehan Belli on 18.01.2026.
//

import SwiftUI

struct BaseView<Content: View>: View {

    let title: String
    let leftIcon: Image
    let rightButton: AnyView?
    let content: Content

    init(
        title: String,
        leftIcon: Image,
        rightButton: AnyView? = nil,
        @ViewBuilder content: () -> Content
    ) {
        self.title = title
        self.leftIcon = leftIcon
        self.rightButton = rightButton
        self.content = content()
    }

    var body: some View {
        VStack(spacing: 0) {
            header
            Divider()
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }

    private var header: some View {
        HStack(spacing: 12) {
            leftIcon
                .resizable()
                .scaledToFit()
                .frame(width: 36, height: 36)

            Text(title)
                .font(AppFont.semiBold(24))

            Spacer()

            if let rightButton {
                rightButton
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 12)
        .background(Color(.systemBackground))
    }
}

/*
 #Preview {
 BaseView<<#Content: View#>>(title: <#String#>, leftIcon: <#Image#>, content: <#() -> _#>)
 }
 */
