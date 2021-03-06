//
//  MapView.swift
//  BasicTemplate
//
//  Created by Joseph Hinkle on 1/25/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var coordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: AM_LATITUDE,
            longitude: AM_LONGITUDE
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 0.01,
            longitudeDelta: 0.01
        )
    )
    
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $coordinateRegion)
                .frame(minWidth: 200, idealWidth: 500, maxWidth: .infinity, minHeight: 200, idealHeight: 500, maxHeight: .infinity)
            .navigationBarTitle("Our Location", displayMode: .large)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
