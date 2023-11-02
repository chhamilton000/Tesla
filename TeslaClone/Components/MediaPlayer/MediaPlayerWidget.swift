//
//  MediaPlayerWidget.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

struct MediaPlayerWidget: View {
    @State private var value: Double = 0.4
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: 20){
                //MARK: - Information
                HStack(alignment: .center){
                   
                    Image(systemName: "square.fill")
                        .font(.system(size: 64))
                        .frame(width: 64, height: 64)
                    
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text("COFFEE BEAN")
                            .font(.headline)
                            .fontWeight(.semibold)
                        Text("Travis Scott")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .opacity(0.6)
                    }
                    Spacer()
                }
                //MARK: - Play time
                VStack{
                    HStack{
                        Text("1.05")
                        Spacer()
                        Text("-3.03")
                            
                    }
                    .font(.system(size: 14, weight: .medium, design: .default))
                    .opacity(0.6
                    )
                    Slider(value: $value)
                        .tint(Color("Green"))
                        .padding(.top, -10)
                }
                Divider()
                    .background(Color.white)
                    .opacity(0.4)
                
                //MARK: - Controls
                HStack(alignment: .center){
                    HStack(spacing: 10){
                        Button(action: {}){
                        Image(systemName: "backward.fill")
                                .font(.system(size: 20))
                            .opacity(0.7)
                        }
                        Button(action: {}){
                        Image(systemName: "playpause.fill")
                                .font(.system(size: 20))
                        }
                        Button(action: {}){
                        Image(systemName: "forward.fill")
                                .font(.system(size: 20))
                            .opacity(0.7)
                        }
                    }
                    Spacer()
                    HStack(spacing: 10){
                        Button(action: {}){
                        Image(systemName: "minus")
                                .font(.system(size: 20))
                            .opacity(0.7)
                        }
                        
                        RadialGradient(gradient: Gradient(colors: [Color.white, Color.white.opacity(0.2)]), center: .leading, startRadius: 30, endRadius: 32)
                                .frame(width: 44, height: 44)
                                .mask {
                                    Button(action: {}){
                                        Image(systemName: "speaker.wave.3.fill")
                                                .font(.system(size: 20))
                                        }
                                }
                        
                        Button(action: {}){
                        Image(systemName: "plus")
                                .font(.system(size: 20))
                            .opacity(0.7)
                        }
                    }
                }
                .padding(.vertical)
            }
            .padding(20)
            .foregroundColor(Color.white)
            .background(Color.lockGradient)
            .backgroundBlur(radius: 12, opaque: true)
            .cornerRadius(20, corners: [.topLeft, .topRight])
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}
