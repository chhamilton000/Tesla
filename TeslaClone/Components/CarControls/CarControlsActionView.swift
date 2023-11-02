//
//  ControlsView.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

struct CarControlsActionView: View {
    var body: some View {
        VStack(spacing: 15){
            HStack(alignment: .center, spacing: 20) {
                Spacer()
                RemoteActionItemView(icon: "flashlight.on.fill", text: "Flash")
                RemoteActionItemView(icon: "speaker.wave.2.fill", text: "Hank")
                RemoteActionItemView(icon: "key.fill", text: "Start")
                Spacer()
            }
            .padding()
            
            HStack(alignment: .center, spacing: 20) {
                Spacer()
                RemoteActionItemView(icon: "arrow.up.bin", text: "Front Trunk")
                RemoteActionItemView(icon: "arrow.up.square", text: "Trunk")
                
                Spacer()
            }
            .padding()
        }
    }
}
