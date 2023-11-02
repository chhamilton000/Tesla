//
//  Color+lockGradient.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

extension Color{
    static let lockGradient = LinearGradient(gradient: Gradient(colors: [.purple, Color("lock_green_1").opacity(0.6),Color("lock_green_2").opacity(0.6)]), startPoint: .topLeading, endPoint: .bottomTrailing)
}
