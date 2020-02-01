//
//  MapView.swift
//  MapBoxSwiftUI
//
//  Created by Michael Haviv on 1/30/20.
//  Copyright © 2020 Michael Haviv. All rights reserved.
//

import SwiftUI
import Mapbox

// This struct will create, and configure MGLMapView, while SwiftUI manages its life cycle and updates
struct MapView: UIViewRepresentable {
    // To present a map as the view, we add a private MGLMapView property using the Mapbox Streets map style
    private let mapView: MGLMapView = MGLMapView(frame: .zero, styleURL: MGLStyle.streetsStyleURL)
    //we then return it in makeUIView
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MGLMapView {
        return mapView
    }
    
    func updateUIView(_ uiView: MGLMapView, context: UIViewRepresentableContext<MapView>) {

    }
    
    // prepare MapView to receive the values for several modifiers from ContentView where the actual values will be specified
    // for setting the map style
    func styleURL(_ styleURL: URL) -> MapView {
        mapView.styleURL = styleURL
        return self
    }
    // specifying where the map is centered
    func centerCoordinate(_ centerCoordinate: CLLocationCoordinate2D) -> MapView {
        mapView.centerCoordinate = centerCoordinate
        return self
    }
    // for specifying the zoom level of the initial view
    func zoomLevel(_ zoomLevel: Double) -> MapView {
        mapView.zoomLevel = zoomLevel
        return self
    }
    
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
