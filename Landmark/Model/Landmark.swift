//
//  Landmark.swift
//  Landmark
//
//  Created by Shashwat Kashyap on 29/11/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Codable, Identifiable {
    let name: String
    let category: String
    let city: String
    let state: String
    let id: Int
    let isFeatured: Bool
    var isFavorite: Bool
    let park: String
    let coordinates: Coordinate
    let description: String
    let imageName: String
    
    // MARK: Helper Computed Properties
    
    var image: Image {
        return Image(self.imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: self.coordinates.latitude,
            longitude: self.coordinates.longitude)
    }
}

struct Coordinate: Codable {
    let longitude: Double
    let latitude: Double
}
