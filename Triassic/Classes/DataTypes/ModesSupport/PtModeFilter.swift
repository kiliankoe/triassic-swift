//
//  PtModeFilter.swift
//  Pods
//
//  Created by Kilian Költzsch on 17/11/2016.
//
//

import Foundation

public extension ModesSupport {
    /// Struktur zum Filtern nach Verkehrsmitteltypen.
    public struct PtModeFilter {
        /// Indikator, ob die in der Liste angegebenen Verkehrsmittel ausgeschlossen (Wert true) oder als einzige verwendet werden sollen (Wert false). Vor- einstellung ist true.
        public let exclude: Bool

        /// ÖV-Verkehrsmitteltypen.
        public let ptMode: [PtMode]

        init(exclude: Bool = true, ptMode: [PtMode]) {
            self.exclude = exclude
            self.ptMode = ptMode
        }
    }
}
