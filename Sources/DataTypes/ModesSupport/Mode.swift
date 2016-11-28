//
//  Mode.swift
//  Pods
//
//  Created by Kilian Költzsch on 17/11/2016.
//
//

import Foundation

public extension ModesSupport {
    /// Verkehrsmittel mit Klassifizierung und Namen.
    public struct Mode {
        /// Angabe der ÖV-Verkehrsmittelart.
        public let ptMode: PtMode

        // FIXME: Insert PtSubmodeChoice as Verkehrsmitteluntertyp

        /// Verkehrsmittelmitnahme.
        public let name: Utility.InternationalText?

        /// Kurzname oder Abkürzung.
        public let shortName: Utility.InternationalText?

        /// Beschreibender Text.
        public let description: Utility.InternationalText?
    }
}
