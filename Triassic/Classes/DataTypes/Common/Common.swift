//
//  Common.swift
//  Pods
//
//  Created by Kilian Költzsch on 17/11/2016.
//
//

import Foundation

public enum Common {
    /// ID eines Kommunikationspartners.
    public typealias ParticipantCode = String

    /// ID eines Verkehrsunternehmers.
    public typealias OperatorCode = String // FIXME: Should be `xs:NMTOKEN`, like all others below as well

    /// ID einer Linie.
    public typealias LineCode = String

    /// ID einer Linienrichtung.
    public typealias DirectionCode = String

    /// ID einer Fahrplanfahrt.
    public typealias JourneyCode = String

    /// ID eines Fahrzeugs.
    public typealias VehicleCode = String

    /// ID einer Einrichtung/Ausstattung.
    public typealias FacilityCode = String

    /// ID einer verantwortlichen Organisation (Eigentümer).
    public typealias OwnerCode = String

    /// ID eines Verkehrstags.
    public typealias OperatingDayCode = String
}
