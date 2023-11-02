//
//  Color+gridBackground.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

extension Color{
    static let gridBackgroud = LinearGradient(gradient: Gradient(colors: [Color("Background 1").opacity(1), Color("Background 1").opacity(0.5)]), startPoint: .topLeading, endPoint: .bottomTrailing)
}
