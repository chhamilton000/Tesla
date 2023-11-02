//
//  SettingsView.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            HStack {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                },label:{
                    UtilityButton(icon: "chevron.left")
                })
                Spacer()
            }
            .padding()
            
            Image("car_gray")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Button(action: {
                
            },label:{
                SettingItemView(icon: "bolt.batteryblock.fill", text: "Energy", subText: "32.8 kWh Genereated Today")
            })
            Button(action: {
                
            },label:{
                SettingItemView(icon: "leaf.fill", text: "Impact", subText: "100% Self Powered Today")
            })
            Button(action: {
                
            },label:{
                SettingItemView(icon: "gearshape.fill", text: "Settings")
            })
            Button(action: {
                
            },label:{
                SettingItemView(icon: "wrench.fill", text: "Support")
            })
            
            Spacer()
        }
        .frame(maxWidth:.infinity, maxHeight: .infinity)
        .background(Color.background)
        .foregroundColor(Color.white)
        .navigationBarHidden(true)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
