//
//  LandmarkModel.swift
//  LandmarkBookSwiftUI
//
//  Created by Erge Gevher Akova on 18.07.2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Identifiable {
    var id: Int
    var name: String
    var ImageName: String
    var country: String
    var category: String
    var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
}

struct Coordinates {
    var latitude: Double
    var longitude: Double
}


let eiffelLandmark = Landmark(id: 0, name: "Eiffel", ImageName: "eiffel", country: "France", category: "Tower", coordinates: Coordinates(latitude: 10.0, longitude: 10.0))
