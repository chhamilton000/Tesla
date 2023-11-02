//
//  ClimateView.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI
import Sliders


struct ClimateView: View {
    
    @Environment(\.presentationMode) var presentation
    
    @State var progress: Double = 0.1
    @State var fanProgress: Double = 0
    func resetProgress() {
        progress = 0.1
    }
    
    
    @State var value = 0.1
    @State var activeId: String = ""
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack{
            VStack{
                HStack {
                    Button(action: {
                        self.presentation.wrappedValue.dismiss()
                    }){
                        UtilityButton(icon: "chevron.left")}
                    Spacer()
                    Button(action: {
                        self.presentation.wrappedValue.dismiss()
                    }){
                        UtilityButton(icon: "gear")
                    }
                }
                Spacer()
                CircleProgressView(progress: $progress)
                    .frame(width: 200, height: 200)
                
                Spacer()
                ScrollView {
                    VStack(spacing: 50) {
                ControlWidget(progress: $progress, title: Climate.ac.rawValue, icon: "snowflake", activeId: $activeId, isActive: $isActive)
                ControlWidget(progress: $progress, title: Climate.fan.rawValue, icon: "wind", activeId: $activeId, isActive: $isActive)
                ControlWidget(progress: $progress, title: Climate.heat.rawValue, icon: "humidity.fill", activeId: $activeId, isActive: $isActive)
                ControlWidget(progress: $progress, title: Climate.auto.rawValue, icon: "timer", activeId: $activeId, isActive: $isActive)
                    }
                }
                Spacer()
            }
            .padding()
            
            if (isActive) {
                ClimateWidget(open: $isActive, prgoress: $progress, activeId: $activeId, isActive: $isActive)
                    .zIndex(1)
                    .transition(.move(edge: .bottom))
            }
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.background)
        .foregroundColor(Color.white)
        .navigationBarHidden(true)
    }
  
    
}

struct ClimateView_Previews: PreviewProvider {
    static var previews: some View {
        ClimateView()
    }
}

