//
//  RemoteActionNotificationView.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

struct RemoteActionNotificationView: View {
    @Binding var open: Bool
    var icon: String
    var text: String
    var body: some View {
        VStack {
            Spacer()
            HStack(alignment: .center, spacing: 10) {
                Image(systemName: icon)
                    .imageScale(.large)
                Text(text)
                    .font(.headline)
                    .fontWeight(.semibold)
                Spacer()
                Button(action: {
                    withAnimation {
                        open = false
                    }
                }){
                    Text("Cancel")
                        .foregroundColor(Color.white.opacity(0.7))
                }
                
            }
            .padding(20)
            .foregroundColor(Color.white)
            .background(Color.lockGradient)
            .backgroundBlur(radius: 10, opaque: true)
            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            .padding()
        
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct RemoteActionNotificationView_Previews: PreviewProvider{
    static var previews: some View{
        RemoteActionNotificationView(open: .constant(true), icon: "key.fill", text: "Lock")
    }
}
