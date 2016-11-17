//
//  LineDirection.swift
//  Pods
//
//  Created by Kilian Költzsch on 17/11/2016.
//
//

import Foundation

public extension Common {
    /// Linien-ID, evtl. verfeinert auf eine Richtung
    public struct LineDirection {
        /// Referenz auf die Linie.
        let line: LineCode

        /// Referenz auf die Linienrichtung.
        let direction: DirectionCode?
    }
}
