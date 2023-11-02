//
//  ChargingWidgetView.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

struct ChargingWidgetView: View {
    @Binding var open: Bool

    var body: some View {
        VStack {
            Spacer()
            VStack(alignment:.leading, spacing: 20){
                //MARK: - Information
                VStack(alignment: .leading){
                   Label("237 miles", systemImage: "bolt.fill")
                        .foregroundColor(Color("Green"))
                        .font(.system(size: 24, weight: .semibold, design: .rounded))
                    Text("3h 55m remain – 32/3A – 30 mi/hour")
                        .font(.subheadline)
                        .fontWeight(.medium)
                  
                }
                //MARK: - Play time
                VStack(alignment: .leading, spacing: 5){
                    
                   Text("Charge Limit: 315 miles")
                        .font(.footnote)
                        .opacity(0.6)
                    ZStack(alignment: .leading){
                        Color.white.opacity(0.25)
                            .frame(height: 6)
                        Color("Green")
                            .frame(maxWidth: 240)
                            .frame(height: 6)
                            .clipShape(Capsule())
                    }
                }
                Divider()
                    .background(Color.white)
                    .opacity(0.4)
                
                //MARK: - Controls
                Button(action: {
                    withAnimation { open = false }
                },label:{
                    Text("Stop Charging")
                        .font(.footnote)
                        .fontWeight(.medium)
                        .padding(.vertical,8)
                        .padding(.horizontal, 20)
                        .background(Color("DarkRed"))
                        .clipShape(Capsule())
                })
                .frame(maxWidth: .infinity)
                .padding(.bottom, 20)
                    
            }
            .padding(20)
            .foregroundColor(Color.white)
            .background(Color.lockGradient)
            .backgroundBlur(radius: 2, opaque: true)
            .cornerRadius(20, corners: [.topLeft, .topRight])
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ChargingWidgetView_Previews: PreviewProvider{
    static var previews: some View{
        ChargingWidgetView(open: .constant(true))
    }
}


