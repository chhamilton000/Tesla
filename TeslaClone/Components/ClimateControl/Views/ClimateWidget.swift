//
//  ClimateWidget.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

struct ClimateWidget: View {
    @Binding var open: Bool
    @Binding var prgoress: Double
    @Binding var activeId: String
    @Binding var isActive: Bool
    
    var body: some View {
        VStack {
            Spacer()
            VStack(alignment:.leading, spacing: 20){
                HStack(alignment: .center, spacing: 15) {
                    Button(action: {
                        withAnimation {
                            prgoress = 0.1
                            open = false
                            activeId = ""
                            isActive = false
                        }
                    }){
                    Image(systemName: "power")
                            .font(.system(size: 20, weight: .bold, design: .default))
                    }
                    Spacer()
                    Image(systemName: "chevron.backward")
                    Text("\(Int(prgoress * 100))°")
                        .font(.system(size: 22))
                    Image(systemName: "chevron.forward")
                    Spacer()
                    Image(systemName: "dot.radiowaves.up.forward")
                }
                .imageScale(.large)
                .font(.system(size: 20, weight: .bold, design: .default))
                
                
                //MARK: -
                Divider()
                    .background(Color.white)
                    .opacity(0.4)
                
                HStack {
                    Text("On")
                    Spacer()
                    Text("Vent")
                        .opacity(0.6)
                }
                .padding(.vertical)
               
                    
            }
            .padding(20)
            .foregroundColor(Color.white)
            .background(Color.lockGradient)
            .cornerRadius(20, corners: [.topLeft, .topRight])
            .innerShadow(shape: RoundedRectangle(cornerRadius: 20), color: .white.opacity(0.25), lineWidth: 1, offsetX: 1, offsetY: 1, blur: 1, blendMode: .overlay)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ClimateWidget_Previews: PreviewProvider{
    static var previews: some View{
        ClimateWidget(open: .constant(true), prgoress: .constant(0.5),
                      activeId: .constant(""), isActive: .constant(true))
    }
}

