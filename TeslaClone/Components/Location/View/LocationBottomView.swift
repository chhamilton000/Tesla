//
//  LocationBottomView.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import MapKit
import SwiftUI

struct LocationBottomView: View {
    @State private var location = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 29.7604, longitude: 95.3698), span: MKCoordinateSpan(latitudeDelta: 0.006, longitudeDelta: 0.006))
    var body: some View {
        VStack{
            Spacer()
            VStack(alignment:.leading, spacing: 10){
                Text("Location")
                    .font(.title)
                    .fontWeight(.semibold)
                Divider()
                    .background(Color.white)
                    .opacity(0.4)
                Label("Houston, Texas", systemImage: "location.fill")
                    .font(.system(.subheadline))
                    .opacity(0.6)
                Text("Summon")
                    .font(.system(.title3))
                    .fontWeight(.semibold)
                    .padding(.top)
                Text("Press and hold controls to move vehicle")
                    .font(.system(.subheadline))
                    .opacity(0.6)
                    .padding(.bottom)
                LocationButton(text: "Go to Target")
                HStack{
                    LocationButton(icon: "arrow.up")
                    LocationButton(icon: "arrow.down")
                }
            }
            .padding()
            .frame(maxWidth:.infinity)
            .background(Color.background)
            .foregroundColor(Color.white)
        }
    }
}


struct LocationBottomView_Previews: PreviewProvider{
    static var previews: some View{
        LocationBottomView()
    }
}
