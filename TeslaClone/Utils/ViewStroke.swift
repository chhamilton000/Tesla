//
//  ViewStroke.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

struct ViewStroke: ViewModifier {
    // created a variable cornerRadius to be able to pass the value of it in the modifier as Dynamic value: type CGFloat
    var cornerRadius: CGFloat
    // adopting to the darkMode
    @Environment(\.colorScheme) var colorScheme
    func body(content: Content) -> some View {
        content.overlay(
            RoundedRectangle(
                cornerRadius: cornerRadius,
                style: .continuous
            )
                .stroke(
                    .linearGradient(
                        colors: [
                            .white.opacity(colorScheme == .dark ? 0.1 : 0.3 ),
                            .black.opacity(colorScheme == .dark ? 0.3 : 0.1 )
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .blendMode(.overlay)
        )
    }
}

