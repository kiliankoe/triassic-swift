//
//  InternationalText.swift
//  Pods
//
//  Created by Kilian Költzsch on 16/11/2016.
//
//

import Foundation

public extension Utility {
    /// Ein Text mit einer Text-ID und Angabe der Sprache, in der er verfasst ist.
    public struct InternationalText {
        /// Text.
        public let text: String

        /// ID des Texts.
        public let textID: String? // FIXME: Should be `xs:NMTOKEN`, whatever that is

        /// Sprache, in der der Text verfasst ist.
        public let language: String? // FIXME: Should be `xs:language`
    }
}
