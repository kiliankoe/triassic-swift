//
//  DateTime.swift
//  Triassic
//
//  Created by Kilian Költzsch on 30/11/2016.
//  Copyright © 2016 Triassic Park. All rights reserved.
//

import Foundation

public extension XS {
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
}
