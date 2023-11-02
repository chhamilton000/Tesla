//
//  CircleProgressView.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

struct CircleProgressView: View {
    @Binding var progress: Double
    var body: some View {
        ZStack {
            
            Image("progress_bg")
            
            Circle()
                .stroke(
                    Color("Background").opacity(0.5),
                    lineWidth: 20
                )
                .frame(width: 145, height: 145)
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(
                    Color.lockGradient,
                    style: StrokeStyle(
                        lineWidth: 20,
                        lineCap: .round
                    )
                )
                .frame(width: 165, height: 165)
                .rotationEffect(.degrees(-90))
            // 1
                .animation(.easeOut, value: progress)
            
            Text("\(Int(progress * 100))º F")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            
        }
    }
}

struct CircleProgressView_Previews: PreviewProvider{
    static var previews: some View{
        CircleProgressView(progress: .constant(0.5))
    }
}
