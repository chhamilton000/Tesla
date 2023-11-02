//
//  CarLocation.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import Foundation
import MapKit

struct CarLocation: Identifiable {
    let id = UUID()
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
