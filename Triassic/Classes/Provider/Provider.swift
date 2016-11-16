//
//  Provider.swift
//  Pods
//
//  Created by Kilian Költzsch on 16/11/2016.
//
//

import Foundation
import CoreLocation

public protocol Provider {
    var id: String { get }
    var baseURL: URL { get }
    var center: CLLocationCoordinate2D { get }
}
