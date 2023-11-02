//
//  ControlsView.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

struct CarControlsView: View {
    @Environment(\.presentationMode) var presentation
    @State private var status = false
    var body: some View {
        ScrollView{
            VStack(alignment: .leading,  spacing: 20) {
                HStack {
                    Button(action: {
                        self.presentation.wrappedValue.dismiss()
                    }){
                        UtilityButton(icon: "chevron.left")}
                    Spacer()
                }
                Text("Car Controls")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.top)
                
                IconButton(icon: "lock.fill", text: "Unlock Car")
                
                Divider()
                    .background(Color.white)
                    .opacity(0.4)
                CarControlsActionView()
                Divider()
                    .background(Color.white)
                    .opacity(0.4)
            }.padding()
            
            Toggle(isOn: $status){
                Text("Valet Mode")
                    .fontWeight(.semibold)
            }
            .padding(.horizontal)
            
        }
        .frame(maxWidth:.infinity, maxHeight: .infinity)
        .background(Color.background)
        .backgroundBlur(radius: 10, opaque: true)
        .foregroundColor(Color.white)
        .navigationBarHidden(true)
        
        
    }
}

struct ControlsView_Previews: PreviewProvider {
    static var previews: some View {
        CarControlsView()
    }
}
