//
//  VVOProvider.swift
//  Triassic
//
//  Created by Kilian Költzsch on 29/11/2016.
//  Copyright © 2016 Triassic Park. All rights reserved.
//

import Foundation
import CoreLocation

public struct VVOProvider: Provider {
    public static let id = XS.NameToken("VVO")
    public static let baseURL = URL(string: "http://trias.vvo-online.de:9000/Middleware/Data/Trias")!
    public static let center = CLLocationCoordinate2D(latitude: 51.0532443, longitude: 13.7414791)
}

// TODO: Add extension for additional VVO stuff like routechanges via webapi
