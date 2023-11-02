//
//  SettingItem.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

struct SettingItemView: View {
    var icon: String
    var text: String
    var subText: String = ""
    var body: some View {
        HStack(alignment: .center, spacing: 15) {
            
            Image( systemName: icon)
                .imageScale(.large)
                .opacity(0.5)
            VStack(alignment: .leading, spacing: 6){
               Text(text)
                    .font(.headline)
                    .fontWeight(.semibold)
                if !subText.isEmpty {
                Text(subText)
                    .font(.footnote)
                    .opacity(0.5)
                }
            }
        }
        .foregroundColor(Color.white)
        .padding(.horizontal)
        .padding(.vertical,8)
    }
}
