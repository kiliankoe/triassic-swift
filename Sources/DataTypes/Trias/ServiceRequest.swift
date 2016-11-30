//
//  ServiceRequest.swift
//  Triassic
//
//  Created by Kilian Költzsch on 30/11/2016.
//  Copyright © 2016 Triassic Park. All rights reserved.
//

import Foundation

/// Grundstruktur für jede TRIAS-Anfrage (ohne Abonnement).
public struct ServiceRequest {
    /// Dienstspezifischer Anfrageinhalt.
    public let payload: RequestPayload
    public let requestorRef: String
}
