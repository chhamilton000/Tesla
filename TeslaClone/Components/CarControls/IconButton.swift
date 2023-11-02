//
//  IconButton.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

struct IconButton: View {
    var icon: String
    var text: String
    var body: some View {
        Button(action: {}){
            Label(text, systemImage: icon)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 44)
        .background(Color.white.opacity(0.09))
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

