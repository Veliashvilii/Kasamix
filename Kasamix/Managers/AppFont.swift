//
//  AppFont.swift
//  Kasamix
//
//  Created by Metehan Belli on 18.01.2026.
//

import SwiftUI

enum AppFont {
    
    // MARK: - Titles
    static func title(_ size: CGFloat) -> Font {
        .custom("Inter-Bold", size: size)
    }

    // MARK: - Body
    static func regular(_ size: CGFloat) -> Font {
        .custom("Inter-Regular", size: size)
    }

    static func medium(_ size: CGFloat) -> Font {
        .custom("Inter-Medium", size: size)
    }

    static func semiBold(_ size: CGFloat) -> Font {
        .custom("Inter-SemiBold", size: size)
    }

    static func bold(_ size: CGFloat) -> Font {
        .custom("Inter-Bold", size: size)
    }
}
