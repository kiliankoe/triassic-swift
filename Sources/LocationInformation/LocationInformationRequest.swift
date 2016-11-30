//
//  LocationInformationRequest.swift
//  Triassic
//
//  Created by Kilian Költzsch on 16/11/2016.
//  Copyright © 2016 Triassic Park. All rights reserved.
//

import Foundation

/// Der Ortsinformationsdienst umfasst diese Funktionalitäten:
/// - Start-/Ziel-Identifikation bei Eingabe einer Zeichenkette
/// - Objektinformationsdienst zum Abrufen aller Ortsobjekte
/// - Geografischer Kontextdienst zum Abrufen von Ortsobjekten in einem Kartenausschnitt
/// - Koordinaten-zu-Adressdienst zum Abrufen der nächsten Adresse für gegebene Koordinaten
/// - Abruf der nächsten Haltestellen(n) für gegebene Koordinaten
/// - Ortsabhängiges Patternmatching einer Zeichenkette durch Berücksichtigung von gleichzeitig übergebenen Koordinaten
public struct LocationInformationRequest: Request {
    public let initialInput: InitialLocationInput?
//    public let locationRef: LocationRef?
//    public let restrictions: LocationParam?

    public init(initialInput: InitialLocationInput) {
        self.initialInput = initialInput
    }
}
