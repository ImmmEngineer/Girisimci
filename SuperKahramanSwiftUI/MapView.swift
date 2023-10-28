//
//  MapView.swift
//  SuperKahramanSwiftUI
//
//  Created by Muhammet Emin Ayhan on 22.10.2023.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    var coordinate : CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }

}

#Preview {
    MapView(coordinate: superKahramanlarDizisi[0].koordinatLokasyonu)
    
}
