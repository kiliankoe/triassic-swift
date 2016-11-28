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
    public typealias OperatorCode = XS.NameToken

    /// ID einer Linie.
    public typealias LineCode = XS.NameToken

    /// ID einer Linienrichtung.
    public typealias DirectionCode = XS.NameToken

    /// ID einer Fahrplanfahrt.
    public typealias JourneyCode = XS.NameToken

    /// ID eines Fahrzeugs.
    public typealias VehicleCode = XS.NameToken

    /// ID einer Einrichtung/Ausstattung.
    public typealias FacilityCode = XS.NameToken

    /// ID einer verantwortlichen Organisation (Eigentümer).
    public typealias OwnerCode = XS.NameToken

    /// ID eines Verkehrstags.
    public typealias OperatingDayCode = XS.NameToken
}
