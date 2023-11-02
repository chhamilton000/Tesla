//
//  Color+selectedGridBackgroud.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

extension Color{
    static let selectedGridBackgroud = LinearGradient(gradient: Gradient(colors: [Color("Blue").opacity(1), Color("LightBlue").opacity(0.9)]), startPoint: .topLeading, endPoint: .bottomTrailing)
}
