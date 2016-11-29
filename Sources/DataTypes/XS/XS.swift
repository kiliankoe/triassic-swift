//
//  XS.swift
//  Triassic
//
//  Created by Kilian Költzsch on 22/11/2016.
//  Copyright © 2016 Triassic Park. All rights reserved.
//

import Foundation

public enum XS {
    public typealias Language = String

    /// Contains a string with line feeds, carriage returns, tabs, leading and trailing spaces, and multiple spaces removed.
    public struct NameToken: CustomStringConvertible {
        internal let value: String

        init(_ value: String) {
            self.value = value
        }

        public var description: String {
            return value.condensedWhitespace
        }
    }

    /// Contains a string with line feeds, carriage returns, and tab characters removed.
    public struct NormalizedString: CustomStringConvertible {
        internal let value: String

        init(_ value: String) {
            self.value = value
        }

        public var description: String {
            return value
                .replacingOccurrences(of: "\t", with: " ")
                .replacingOccurrences(of: "\n", with: "")
        }
    }

    /// Specify a time and date.
    public struct DateTime: CustomStringConvertible {
        internal let value: Date

        internal static var dateFormatter: DateFormatter = {
            let df = DateFormatter()
            df.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
            return df
        }()

        init(_ value: Date) {
            self.value = value
        }

        init?(_ value: String) {
            guard let date = DateTime.dateFormatter.date(from: value) else {
                return nil
            }
            self.value = date
        }

        public var description: String {
            return DateTime.dateFormatter.string(from: self.value)
        }
    }

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
