//
//  OperatingDays.swift
//  Pods
//
//  Created by Kilian Költzsch on 17/11/2016.
//
//

import Foundation

public extension Common {
    /// Struktur für die Definition von Verkehrstagen mittels Bit-Kette.
    public struct OperatingDays {
        /// Startdatum des Zeitraums.
        let from: Date

        /// Enddatum des Zeitraums.
        let to: Date

        /// Bitmuster für die Verkehrstage im Zeitraum von Startdatum (From) bis Enddatum (To). Die Länge des Bitmusters in Pattern entspricht der Anzahl der Tage von From bis To. Eine „1“ bedeutet, dass das in Frage kommende Ereignis an dem Tag stattfindet, der der Position in der Bitkette entspricht.
        let pattern: Utility.BitString
    }
}
