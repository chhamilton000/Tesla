//
//  RemoteActionViewHeader.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

struct RemoteActionViewHeader: View {
    var title: String
    var isEdit: Bool = false
    
    var body: some View {
        HStack(alignment: .center){
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
            Spacer()
            if isEdit{
                Button {
                    
                } label: {
                    Text("Edit")
                        .foregroundColor(.gray)
                        .fontWeight(.medium)
                }
            }
            
        }.padding(.top)
    }
}

struct RemoteActionViewHeader_Previews: PreviewProvider{
    static var previews: some View{
        RemoteActionViewHeader(title: "All Settings")
    }
}
