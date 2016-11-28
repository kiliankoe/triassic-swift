//
//  GeoArea.swift
//  Pods
//
//  Created by Kilian Költzsch on 17/11/2016.
//
//

import Foundation

/// Definiert ein geografisches Polygon.
public struct GeoArea {
    /// Eckpunkte des Polygons
    public let polylinePoints: [Utility.GeoPosition]

    init?(polylinePoints: [Utility.GeoPosition]) {
        guard polylinePoints.count >= 3 else {
            print("Can't create GeoArea with less than three points.")
            return nil
        }
        self.polylinePoints = polylinePoints
    }
}
