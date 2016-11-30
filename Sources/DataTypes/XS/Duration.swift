//
//  Duration.swift
//  Triassic
//
//  Created by Kilian Költzsch on 30/11/2016.
//  Copyright © 2016 Triassic Park. All rights reserved.
//

import Foundation

public extension XS {
    /// Specify a time interval.
    public struct Duration: CustomStringConvertible {
        internal let years: UInt?
        internal let months: UInt?
        internal let days: UInt?
        internal let hours: UInt?
        internal let minutes: UInt?
        internal let seconds: UInt?

        internal let isNegative: Bool

        init(years: UInt? = nil, months: UInt? = nil, days: UInt? = nil, hours: UInt? = nil, minutes: UInt? = nil, seconds: UInt? = nil, isNegative: Bool = false) {
            self.years = years
            self.months = months
            self.days = days
            self.hours = hours
            self.minutes = minutes
            self.seconds = seconds
            self.isNegative = isNegative
        }

        public var description: String {
            // PnYnMnDTnHnMnS
            var str = isNegative ? "-P" : "P"
            if let years = years { str += "\(years)Y" }
            if let months = months { str += "\(months)M" }
            if let days = days { str += "\(days)D" }
            if hours != nil || minutes != nil || seconds != nil {
                str += "T"
            }
            if let hours = hours { str += "\(hours)H" }
            if let minutes = minutes { str += "\(minutes)M" }
            if let seconds = seconds { str += "\(seconds)S" }
            return str
        }
    }
}
