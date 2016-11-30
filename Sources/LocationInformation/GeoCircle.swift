//
//  GeoCircle.swift
//  Pods
//
//  Created by Kilian Költzsch on 17/11/2016.
//
//

import Foundation

/// Definiert einen geografischen Kreis.
public struct GeoCircle {
    /// Zentrum des Kreises.
    public let center: Utility.GeoPosition

    /// Radius des Kreises in Metern.
    public let radius: Utility.Distance
}
