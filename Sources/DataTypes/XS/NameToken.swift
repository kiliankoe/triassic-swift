//
//  NameToken.swift
//  Triassic
//
//  Created by Kilian Költzsch on 30/11/2016.
//  Copyright © 2016 Triassic Park. All rights reserved.
//

import Foundation

public extension XS {
    /// Contains a string with line feeds, carriage returns, tabs, leading and trailing spaces, and multiple spaces removed.
    public struct NameToken: CustomStringConvertible {
        internal let value: String

        public init(_ value: String) {
            self.value = value
        }

        public var description: String {
            return value
                .replacingOccurrences(of: "\t", with: "")
                .condensedWhitespace
        }
    }
}
