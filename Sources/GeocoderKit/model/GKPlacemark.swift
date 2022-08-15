//
//  GKPlacemark.swift
//  GeocoderKit
//
//  Created by Angel Luis Garcia on 09/08/2019.
//  Copyright © 2019 angelolloqui. All rights reserved.
//

import Foundation
import CoreLocation

// CLPlacemark can not be subclassed (it crashes on deallocation) so we use this replacement class that has
// the same signature than the official CLPlacemark to allow drop in replacement
public class GKPlacemark: Equatable {
    public var location: CLLocation?
    public var region: CLRegion?
    public var timeZone: TimeZone?
    public var name: String?
    public var thoroughfare: String?
    public var subThoroughfare: String?
    public var locality: String?
    public var subLocality: String?
    public var administrativeArea: String?
    public var subAdministrativeArea: String?
    public var postalCode: String?
    public var isoCountryCode: String?
    public var country: String?
    public var inlandWater: String?
    public var ocean: String?
    public var areasOfInterest: [String]?

    public static func == (lhs: GKPlacemark, rhs: GKPlacemark) -> Bool {
        return lhs.location == rhs.location &&
            lhs.region == rhs.region &&
            lhs.timeZone == rhs.timeZone &&
            lhs.name == rhs.name &&
            lhs.thoroughfare == rhs.thoroughfare &&
            lhs.subThoroughfare == rhs.subThoroughfare &&
            lhs.locality == rhs.locality &&
            lhs.subLocality == rhs.subLocality &&
            lhs.administrativeArea == rhs.administrativeArea &&
            lhs.subAdministrativeArea == rhs.subAdministrativeArea &&
            lhs.postalCode == rhs.postalCode &&
            lhs.isoCountryCode == rhs.isoCountryCode &&
            lhs.country == rhs.country &&
            lhs.inlandWater == rhs.inlandWater &&
            lhs.ocean == rhs.ocean &&
            lhs.areasOfInterest == rhs.areasOfInterest
    }

}
