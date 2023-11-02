//
//  ControlWidget.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

struct ControlWidget: View {
    @Binding var progress: Double
    
    var title: String
    var icon: String
    @Binding var activeId: String
    @Binding var isActive: Bool
    
    @State var localProgress: Double = 0.0
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Text(title)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(self.activeId == title ? Color.white : Color.white.opacity(0.6))
                .frame(width: 50)
            
            Button(action: {
                withAnimation {
                    self.activeId = title
                    self.isActive = true
                }
                
            },label:{
                Circle()
                    .foregroundColor(Color("Background"))
                    .overlay(
                        
                        Image(systemName: icon)
                            .font(.system(size: 23))
                            .foregroundColor(activeId == title ? Color("lock_green_1") : Color.white.opacity(0.7))
                    )
                    .frame(width: 50, height: 50)
                    .shadow(color: Color.white.opacity(0.3), radius: 5, x: 0, y: 0)
            })
            if activeId == title {
                ProgressWidget(progress: $progress)
                    
            }
            else {
            ProgressWidget(progress: $localProgress)
                .allowsHitTesting(false)
            }
        }
        .padding(.horizontal, 6)
        .foregroundColor(Color.white)
    }
}

struct ControlWidget_Previews: PreviewProvider{
    static var previews: some View{
        ControlWidget(progress: .constant(0.5), title: "", icon: "",
                      activeId: .constant(""), isActive: .constant(true))
    }
}

