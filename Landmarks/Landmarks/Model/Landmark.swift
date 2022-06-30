//
//  Landmark.swift
//  Landmarks
//
//  Created by Atheer Al Zahrani on 24/10/1443 AH.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var  locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
                   latitude: coordinates.latitude,
                   longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}

extension Landmark{
    static func dummyData() -> Landmark{
        Landmark(id: 1, name: "name name", park: "park", state: "state", description: "description", isFavorite: true, imageName: "icybay", coordinates: Coordinates(latitude: 33.0, longitude: 34.0))
    }
}
