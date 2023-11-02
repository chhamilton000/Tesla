//
//  LocationButton.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

struct LocationButton: View {
    var text: String = ""
    var icon: String = ""
    var body: some View {
        Button(action: {}){
            if text.isEmpty {
                Image(systemName: icon)
                    .imageScale(.large)
                    .padding()
            }
            else {
            Text(text)
                    .padding()
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 44)
        .background(Color.gridBackgroud)
        .clipShape(RoundedRectangle(cornerRadius: 5))
        .overlay {
            // MARK: Card Border
            RoundedRectangle(cornerRadius: 5)
                .strokeBorder(.white.opacity(0.2))
                .blendMode(.overlay)
        }
        .backgroundBlur(radius: 25, opaque: true)
        .innerShadow(shape: RoundedRectangle(cornerRadius: 5), color: .white.opacity(0.25), lineWidth: 1, offsetX: 1, offsetY: 1, blur: 1, blendMode: .overlay)
    }
}

struct LocationButton_Previews: PreviewProvider{
    static var previews: some View{
        LocationButton()
    }
}
