//
//  LocationView.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import CoreLocation
import CoreLocationUI
import MapKit
import SwiftUI

struct LocationView: View {
    @Environment(\.presentationMode) var presentation
    
    @StateObject var locationManager = LocationViewModel()

    
    @State private var location = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 29.7604, longitude: 95.3698), span: MKCoordinateSpan(latitudeDelta: 0.006, longitudeDelta: 0.006))
    
    @State var tracking : MapUserTrackingMode = .follow
    
    var body: some View {
        ZStack{
            //MARK: -Show Map
            Map(coordinateRegion: $locationManager.region, interactionModes: .all, showsUserLocation: true, userTrackingMode: $tracking,  annotationItems: locationManager.carPin) { location in
                MapAnnotation(coordinate: location.coordinate) {
                    CarPinView()
                }
            }
            
            //MARK: -Top Gradient
            Color.mapBackground
                .allowsHitTesting(false)
            
            //MARK: - Bottom view
            LocationBottomView()
            
            //MARK: - Navigation buttons
            VStack {
                HStack {
                    Button(action: {
                        self.presentation.wrappedValue.dismiss()
                    }){
                        UtilityButton(icon: "chevron.left")}
                    Spacer()
                    Button(action: {
                        locationManager.requestLocation()
                    }){
                        
                        UtilityButton(icon: "scope")
                            .background(Color("Blue").opacity(0.4))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                    }
                }.padding()
                Spacer()
            }
        }
        .frame(maxWidth:.infinity, maxHeight: .infinity)
        .background(Color.background)
        .foregroundColor(Color.white)
        .navigationBarHidden(true)
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
