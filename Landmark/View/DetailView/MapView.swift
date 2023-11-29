//
//  MapView.swift
//  Landmark
//
//  Created by Shashwat Kashyap on 29/11/23.
//

import SwiftUI
import MapKit




struct MapView: View {
    var coordinate: CLLocationCoordinate2D

    var body: some View {
        //Look at other possible inits, this one is special as it accounts for updation so might wanna check if it is actually true
        Map(position: .constant(.region(region)))
    }
    
    
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: self.coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
    
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
