//
//  InitialLocationInput.swift
//  Pods
//
//  Created by Kilian Költzsch on 17/11/2016.
//
//

import Foundation

/// Fasst die Anfrageparameter zusammen, die eine initiale Suche nach Ortsobjekten benötigt.
public struct InitialLocationInput {
    /// Eingabezeichenkette, die als Muster für die zu findenden Ortsobjekte dienen soll. Falls angegeben, sollen Ortsobjekte umso mehr bevorzugt werden, je ähnlicher ihr Name der Zeichenkette ist. Falls gleichzeitig GeoPosition angegeben wird, muss der Dienst beide Anforderungen sinnvoll zueinander gewichten.
    let locationName: String?

    /// Geografische Position, in dessen Nähe die zu findenden Ortsobjekte liegen sollen. Falls angegeben, sollen solche Ortsobjekte bevorzugt werden, die in der Nähe dieser Geoposition liegen. Falls gleichzeitig LocationName angegeben wird, muss der Dienst beide Anforderungen sinnvoll zueinander gewichten.
    let geoPosition: Utility.GeoPosition?

    /// Geografischer Filter. Falls angegeben, müssen alle gefundenene Ortsobjekte diesem Filter entsprechen.
    let geoRestriction: GeoRestriction?
}
