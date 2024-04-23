//
//  Location.swift
//  SampleProject
//
//  Created by 김미진 on 4/23/24.
//

import Foundation
import CoreLocation

struct Location: Equatable {
    var name: String?
    var latitude: Double
    var longitude: Double
  
  var location: CLLocation {
    return CLLocation(latitude: latitude, longitude: longitude)
  }
}

extension Location {
  static func ==(lhs: Location, rhs: Location) -> Bool {
    return lhs.name == rhs.name &&
      lhs.latitude == rhs.latitude &&
      lhs.longitude == rhs.longitude
  }
}
