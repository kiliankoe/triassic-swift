//
//  LineDirectionFilter.swift
//  Pods
//
//  Created by Kilian Költzsch on 17/11/2016.
//
//

import Foundation

public extension Common {
    /// Filterstruktur zum Ein-/Ausschließen von Linien(richtungen).
    public struct LineDirectionFilter {
        /// Referenz auf die Linie.
        let line: [LineDirection]

        /// Indikator, ob die Linien(richtungen) dieser Liste in die Suche aufgenommen oder von ihr ausgeschlossen werden sollen. Default ist Ausschluss (Exclude).
        let exclude: Bool

        public init(line: [LineDirection], exclude: Bool = true) {
            self.line = line
            self.exclude = exclude
        }
    }
}
