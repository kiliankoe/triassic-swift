//
//  OperatorFilter.swift
//  Pods
//
//  Created by Kilian Költzsch on 17/11/2016.
//
//

import Foundation

public extension Common {
    /// Struktur zum Filtern nach Verkehrsunternehmen.
    public struct OperatorFilter {
        /// Indikator, ob die in der Liste angegebenen Verkehrsunternehmen ausgeschlossen (Wert true) oder als einzige verwendet werden sollen (Wert false). Voreinstellung ist true.
        public let exclude: Bool

        /// Referenz auf Verkehrsunternehmen.
        public let `operator`: [OperatorCode]

        public init(exclude: Bool = true, operator: [OperatorCode]) {
            self.exclude = exclude
            self.`operator` = `operator`
        }
    }
}
