//
//  WebLink.swift
//  Pods
//
//  Created by Kilian Költzsch on 16/11/2016.
//
//

import Foundation

public extension Utility {
    /// URL mit Beschriftungstext zu einer Ressource im Web
    public struct WebLink {
        /// Beschriftungstext des Links.
        public let label: Utility.InternationalText
        /// URL zur Web-Ressource.
        let url: URL
    }
}
