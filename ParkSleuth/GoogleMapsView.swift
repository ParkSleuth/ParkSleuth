//
//  GoogleMapsView.swift
//  ParkSleuth
//
//  Created by Adam Joshua Mohammad on 5/8/21.
//

import SwiftUI
import GoogleMaps

struct GoogleMapsView: UIViewRepresentable {
    
    /*
     “The zoom level of the camera determines the scale of the map. At larger zoom levels more detail can be seen on the screen, while at smaller zoom levels more of the world can be seen on the screen.
     At zoom level 0, the scale of the map is such that the entire world has a width of approximately 256 points.
     1: World
     5: Landmass / Continent
     10: City
     15: Streets
     20: Buildings.”
     
     */
    
    struct GoogleMapsView: UIViewRepresentable {
        // 1
        @ObservedObject var locationManager = LocationManager()
        private let zoom: Float = 15.0
        
        // 2
        func makeUIView(context: Self.Context) -> GMSMapView {
            let camera = GMSCameraPosition.camera(withLatitude: locationManager.latitude, longitude: locationManager.longitude, zoom: zoom)
            let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
            return mapView
        }
        
        // 3
        func updateUIView(_ mapView: GMSMapView, context: Context) {
            //        let camera = GMSCameraPosition.camera(withLatitude: locationManager.latitude, longitude: locationManager.longitude, zoom: zoom)
            //        mapView.camera = camera
            mapView.animate(toLocation: CLLocationCoordinate2D(latitude: locationManager.latitude, longitude: locationManager.longitude))
        }
    }
}

struct GoogleMapsView_Previews: PreviewProvider {
    static var previews: some View {
        GoogleMapsView()
    }
}
