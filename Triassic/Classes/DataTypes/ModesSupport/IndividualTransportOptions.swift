//
//  IndividualTransportOptions.swift
//  Pods
//
//  Created by Kilian Költzsch on 17/11/2016.
//
//

import Foundation

public extension ModesSupport {
    /// Arten von IV und deren Nutzungsgrenzen, wie sie der Benutzer vorgegeben hat.
    public struct IndividualTransportOptions {
        /// Angabe des IV-Typs. Zugelassen sind hier Werte für Fußweg, Fahrrad, Taxi, selbst gefahrenes Auto, durch andere gefahrenes Auto, Motorrad und LKW. Der Modus „selbst gefahrenes Auto“ benötigt beim Umstieg in ein anderes Verkehrsmittel einen längerfristigen Parkplatz und ist daher ein verallgemeinertes Synonym für Park&Ride. Der Modus „durch andere gefahrenes Auto“ benötigt dagegen nur einen Platz zum Aussteigen lassen.
        let mode: IndividualMode

        /// Maximale Distanz, bis zu der die Nutzung dieses IV-Typs zugelassen ist.
        let maxDistance: Utility.Distance?

        /// Maximale Zeitdauer, bis zu der die Nutzung dieses IV-Typs zugelassen ist.
        let maxDuration: Int? // FIXME: Should be `xs:duration`

        /// Minimale Distanz, ab der die Nutzung dieses IV-Typs zugelassen ist.
        let minDistance: Utility.Distance?

        /// Minimale Zeitdauer, ab der die Nutzung dieses IV-Typs zugelassen ist.
        let minDuration: Int? // FIXME: Should be `xs:duration`

        /// Relative Geschwindigkeit in Prozent. Wert 100 stellt Standardgeschwindigkeit dar. Werte kleiner 100 verringern die Geschwindigkeit, Werte größer 100 vergrößern die Geschwindigkeit anteilig.
        let speed: Utility.OpenPercent?
    }
}
