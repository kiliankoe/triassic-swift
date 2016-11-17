//
//  Utility.swift
//  Pods
//
//  Created by Kilian Költzsch on 16/11/2016.
//
//

import Foundation

/// A collection of types that serve as base values in other definitions.
/// They're documented according to their original German description in the VDV specification.
public enum Utility {
    /// Prozentangabe als Ganzzahlwert. Maximalwert ist 100.
    public typealias Percent = UInt

    /// Prozentangabe als Ganzzahlwert, nach oben unbeschränkt.
    public typealias OpenPercent = UInt

    /// Zeichenkette, die nur aus Nullen und Einsen bestehen kann.
    public typealias BitString = String

    /// Typ zur Angabe von Distanzen (in Metern).
    public typealias Distance = UInt

    /// Typ zur Angabe von Längen (in Metern).
    public typealias Length = UInt

    /// Typ zur Angabe einer Geschwindigkeit (in Meter pro Sekunde).
    public typealias Speed = UInt

    /// Prioritätswerte von 1 (höchste Priorität) bis 5 (niedrigste Priorität).
    public typealias Priority = UInt

    /// Geographische Länge.
    public typealias Longitude = Double

    /// Geographische Breite.
    public typealias Latitude = Double

    /// Höhe über dem Meeresspiegel in Meter.
    public typealias Altitude = Double

    /// Kompassrichtung in Grad. Nord = 0 Grad, im Uhrzeigersinn aufsteigende Werte.
    public typealias AbsoluteBearing = UInt

    /// Typ zur Angabe einer Telefonnummer.
    public typealias PhoneNumber = String
}
