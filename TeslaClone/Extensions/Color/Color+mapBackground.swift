//
//  Color+mapBackground.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

extension Color{
    static let mapBackground = LinearGradient(gradient: Gradient(colors: [Color("Background 1"), Color("Background 1").opacity(0.2), Color.clear, Color.clear]), startPoint: .top, endPoint: .bottom)
}
