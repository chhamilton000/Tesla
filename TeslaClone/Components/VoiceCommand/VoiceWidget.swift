//
//  VoiceWidget.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

struct VoiceWidget: View {
    @Binding var open: Bool
    var text: String = "Go to time square"
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing:0) {
                HStack(alignment: .center) {
                    Image(systemName: "mic.fill")
                        .imageScale(.large)
                        .font(.system(size: 24))
                    
                    Spacer()
                    Text(text)
                        .font(.title3)
                        .fontWeight(.semibold)
                    Spacer()
                    
                    Button(action: {
                        withAnimation { open = false }
                    },label:{
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 24))
                            .padding(.bottom,6)
                    })
                }
                .foregroundColor(Color.black)
                .padding()
                .padding(.vertical, 24)
                .background(Color("Green"))
                
                
            }
            
        }
        .edgesIgnoringSafeArea(.bottom)
        
    }
}

