//
//  SharingService.swift
//  Pods
//
//  Created by Kilian Költzsch on 17/11/2016.
//
//

import Foundation

public extension Common {
    /// Struktur zur Beschreibung eines
    public struct SharingService {
        /// Operator-ID.
        let `operator`: OperatorCode

        /// Name des Mobilitätsdienstes.
        let name: String?

        /// Typ des Ausleih- und Rückgabeverfahrens.
        let sharingModel: SharingModel?

        /// Typische Zeit, die ein Benutzer einplanen muss, um sich am System anzumelden und das Fahrzeug in Fahrbereitschaft zu versetzen.
        let timeBufferBefore: XS.Duration?

        /// Typische Zeit, die ein Benutzer einplanen muss, um das Fahrzeug ordnungsgemäß abzustellen, zu verschließen und sich am System abzumelden.
        let timeBufferAfter: XS.Duration?

        /// Link zu Web-Seite mit weiterführenden Informationen.
        let infoURL: Utility.WebLink?
    }

    /// Typ des Ausleih- und Rückgabeverfahrens.
    public enum SharingModel {
        case singleStationBased, multipleStationBased, nonStationBased
    }
}
