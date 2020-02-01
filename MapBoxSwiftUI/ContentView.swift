//
//  ContentView.swift
//  MapBoxSwiftUI
//
//  Created by Michael Haviv on 1/30/20.
//  Copyright © 2020 Michael Haviv. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        MapView().centerCoordinate(.init(latitude: 37.791293, longitude: -122.396324)).zoomLevel(16).edgesIgnoringSafeArea(.all)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
