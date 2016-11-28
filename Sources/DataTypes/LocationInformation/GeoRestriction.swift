//
//  GeoRestriction.swift
//  Pods
//
//  Created by Kilian Költzsch on 17/11/2016.
//
//

import Foundation

/// Definiert einen geografischen Filter.
public struct GeoRestriction {
    /// Der Filter wird durch einen Kreis definiert.
    let circle: GeoCircle?

    /// Der Filter wird durch ein Rechteck definiert.
    let rectangle: GeoRectangle?

    /// Der Filter wird durch ein Polygon definiert.
    let area: GeoArea?

    init(circle: GeoCircle) {
        self.circle = circle
        self.rectangle = nil
        self.area = nil
    }

    init(rectangle: GeoRectangle) {
        self.circle = nil
        self.rectangle = rectangle
        self.area = nil
    }

    init(area: GeoArea) {
        self.circle = nil
        self.rectangle = nil
        self.area = area
    }
}
