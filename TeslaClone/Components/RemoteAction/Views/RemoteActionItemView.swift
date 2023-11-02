//
//  RemoteActionItemView.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

struct RemoteActionItemView: View {
    var icon: String
    var text: String
    var body: some View {
        VStack(alignment: .center, spacing: 5){
            
            UtilityButton(icon: icon)
            Text(text)
                .frame(width: 75)
                .font(.system(size: 12, weight: .semibold, design: .default))
                .multilineTextAlignment(.center)
        }
    }
}


struct RemoteActionItemView_Previews: PreviewProvider{
    static var previews: some View{
        RemoteActionItemView(icon: "key.fill", text: "Start")
    }
}
