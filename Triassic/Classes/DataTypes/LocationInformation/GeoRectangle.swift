//
//  GeoRectangle.swift
//  Pods
//
//  Created by Kilian Költzsch on 17/11/2016.
//
//

import Foundation

/// Definiert ein geografisches Rechteck.
public struct GeoRectangle {
    /// Linke obere Ecke des Rechtecks.
    public let upperLeft: Utility.GeoPosition

    /// Rechte untere Ecke des Rechtecks.
    public let lowerRight: Utility.GeoPosition
}
