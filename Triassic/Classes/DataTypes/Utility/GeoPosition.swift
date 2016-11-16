//
//  GeoPosition.swift
//  Pods
//
//  Created by Kilian Költzsch on 16/11/2016.
//
//

import Foundation

public extension Utility {
    /// Geographische Position in WGS84.
    public struct GeoPosition {
        /// Geographische Länge bzgl. des Greenwich-Meridians. Wertebereich von -180 Grad (West) bis +180 Grad (Ost).
        public let longitude: Longitude
        /// Geographische Breite bzgl. des Äquators. Wertebereich von -90 Grad (Süden) bis +90 Grad (Norden).
        public let latitude: Latitude
        /// Höhe über dem Meeresspiegel in Meter.
        public let altitude: Altitude
    }
}
