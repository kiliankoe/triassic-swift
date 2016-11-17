//
//  PrivateCode.swift
//  Pods
//
//  Created by Kilian Költzsch on 17/11/2016.
//
//

import Foundation

public extension Common {
    /// Objekt-ID innerhalb eines proprietären (privaten) Schlüsselsystems (Fremdschlüssel).
    public struct PrivateCode {
        /// Bezeichnung des Schlüsselsystems.
        public let system: String

        /// Code/Objekt-ID
        public let value: String
    }
}
