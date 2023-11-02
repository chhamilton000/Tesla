//
//  LocationViewModel.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import Foundation
import MapKit


class LocationViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    let manager = CLLocationManager()

    @Published var location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 29.7604, longitude: 95.3698)
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 29.7604, longitude: 95.3698), span: MKCoordinateSpan(latitudeDelta: 0.006, longitudeDelta: 0.006))
    @Published var carPin = [CarLocation(latitude: 29.7604, longitude: 95.3698)]
    
    override init() {
        super.init()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestAlwaysAuthorization()
        manager.startUpdatingLocation()
    }

    func requestLocation() {
        manager.requestLocation()
        self.location = manager.location?.coordinate ?? CLLocationCoordinate2D(latitude: 29.7604, longitude: 95.3698)
        print(self.location)
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        guard let location = locations.first else { return }
                
                DispatchQueue.main.async {
                    self.location = location.coordinate
                    self.region = MKCoordinateRegion(
                        center: location.coordinate,
                        span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
                    )
                    self.carPin = [CarLocation(latitude: (locations.first?.coordinate.latitude)!, longitude: (locations.first?.coordinate.longitude)!)]
                }

    }
    
   
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
}
