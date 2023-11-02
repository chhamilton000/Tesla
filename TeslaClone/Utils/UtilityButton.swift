//
//  GeneralButton.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

struct UtilityButton: View {
    var icon: String
    var body: some View {
        Image(systemName: icon)
            .imageScale(.large)
            .frame(width: 44, height: 44)
            .background(Color.white.opacity(0.07), in: Circle())
            .innerShadow(shape: Circle(), color: .white.opacity(0.25), lineWidth: 2, offsetX: 1, offsetY: 1, blur: 1, blendMode: .luminosity)
    }
}
