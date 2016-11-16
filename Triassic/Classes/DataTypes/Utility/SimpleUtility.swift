//
//  Simple.swift
//  Pods
//
//  Created by Kilian Költzsch on 16/11/2016.
//
//

import Foundation

public extension Utility {
    /// Prozentangabe als Ganzzahlwert. Maximalwert ist 100.
    typealias Percent = UInt
    /// Prozentangabe als Ganzzahlwert, nach oben unbeschränkt.
    typealias OpenPercent = UInt
    /// Zeichenkette, die nur aus Nullen und Einsen bestehen kann.
    typealias BitString = String
    /// Typ zur Angabe von Distanzen (in Metern).
    typealias Distance = UInt
    /// Typ zur Angabe von Längen (in Metern).
    typealias Length = UInt
    /// Typ zur Angabe einer Geschwindigkeit (in Meter pro Sekunde).
    typealias Speed = UInt
    /// Prioritätswerte von 1 (höchste Priorität) bis 5 (niedrigste Priorität).
    typealias Priority = UInt
    /// Geographische Länge.
    typealias Longitude = Double
    /// Geographische Breite.
    typealias Latitude = Double
    /// Höhe über dem Meeresspiegel in Meter.
    typealias Altitude = Double
    /// Kompassrichtung in Grad. Nord = 0 Grad, im Uhrzeigersinn aufsteigende Werte.
    typealias AbsoluteBearing = UInt
    /// Typ zur Angabe einer Telefonnummer.
    typealias PhoneNumber = String
}
