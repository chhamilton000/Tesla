//
//  CarPinView.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

struct CarPinView: View {
    var body: some View {
        VStack {
            Image(systemName: "car.fill")
                .frame(width: 34, height: 34)
                .background(Color("Red"))
                .clipShape(Circle())
            Text("Your Tesla")
                .foregroundColor(Color.white)
                .fontWeight(.light)
                .font(.system(.footnote))
                .padding(.all,5)
                .background(Color.black.opacity(0.2))
                .innerShadow(shape: RoundedRectangle(cornerRadius: 5), color: .black.opacity(0.4), lineWidth: 1, offsetX: 1, offsetY: 1, blur: 1, blendMode: .overlay)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            
        }
    }
}

struct CarPinView_Previews: PreviewProvider {
    static var previews: some View {
        CarPinView()
    }
}
