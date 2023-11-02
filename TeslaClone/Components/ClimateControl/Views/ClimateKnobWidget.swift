//
//  ClimateKnobWidget.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

struct ClimateKnobWidget: View {
    var body: some View {
        ZStack {
            Image(systemName: "capsule.fill")
                .imageScale(.large)
                .font(.system(size: 20))
                .foregroundColor(Color("Background"))
                .shadow(color: Color.white.opacity(0.3), radius: 5, x: 0, y: 0)
            Image(systemName: "line.3.horizontal")
                .imageScale(.small)
                .foregroundColor(Color.white.opacity(0.4))
                .rotationEffect(.degrees(90))
            
        }
    }
}

struct ClimateKnobWidget_Previews: PreviewProvider{
    static var previews: some View{
        ClimateKnobWidget()
    }
}
