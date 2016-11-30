//
//  LocationError.swift
//  Triassic
//
//  Created by Kilian Költzsch on 30/11/2016.
//  Copyright © 2016 Triassic Park. All rights reserved.
//

import Foundation

/// Mögliche Fehlermeldungen zu einer LocationInformationResponse.
///
/// - noResults: Zu den Eingabedaten konnten keine Ortsobjekte gefunden werden.
/// - unsupportedType: Es wurden nur Objekttypen angefragt, die vom Dienst nicht unterstützt werden.
/// - unsupportedCombination: Die verwendete Kombination von Eingabedaten (Zeichenkette, Koordinaten, Geo-Restriktion) wird vom Dienst nicht unterstützt.
/// - noRefinement: Das angegebene Ortsobjekt konnte nicht verfeinert werden.
/// - locationUsageIgnored: Der Verwendungszweck wurde ignoriert.
/// - unsupportedPtModes: Der Dienst unterstützt keine Einschränkung der Verkehrsmittel.
/// - unsupportedLocality: Der Dienst unterstützt keine Einschränkung durch Lokalitäten.
public enum LocationError {
    case noResults
    case unsupportedType
    case unsupportedCombination
    case noRefinement
    case locationUsageIgnored
    case unsupportedPtModes
    case unsupportedLocality
}
