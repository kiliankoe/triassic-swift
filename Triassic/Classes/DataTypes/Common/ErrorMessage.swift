//
//  ErrorMessage.swift
//  Pods
//
//  Created by Kilian Költzsch on 17/11/2016.
//
//

import Foundation

public extension Common {
    /// Struktur zur Meldung von Fehlerzuständen.
    public struct ErrorMessage {
        /// Code des Fehlerzustands.
        public let code: String

        /// Beschreibung des Fehlerzustands.
        let text: Utility.InternationalText?
    }
}
