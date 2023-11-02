//
//  ProgressWidget.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import Sliders
import SwiftUI

struct ProgressWidget: View {
    
    @Binding var progress: Double
    
    var body: some View {
        ZStack{
            Color.white.opacity(0.1)
                .frame(height: 12)
                .mask(Capsule())
            ValueSlider(value: $progress)
                .valueSliderStyle(HorizontalValueSliderStyle(
                    track:
                        HorizontalValueTrack(
                            view: Color.lockGradient
                        )
                        .frame(height: 12)
                        .shadow(color: Color.white.opacity(0.6), radius: 5, x: 0, y: 0),
                    thumb: ClimateKnobWidget()
                        .shadow(color: Color.white.opacity(0.3), radius: 5, x: 0, y: 0),
                    
                    thumbSize: CGSize(width: 32, height: 32)
                    
                ))
        }
        
    }
}

struct ProgressWidget_Previews: PreviewProvider{
    static var previews: some View{
        ProgressWidget(progress: .constant(0.75))
    }
}



