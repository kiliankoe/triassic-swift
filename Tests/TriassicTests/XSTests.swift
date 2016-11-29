//
//  XSTests.swift
//  Triassic
//
//  Created by Kilian Költzsch on 29/11/2016.
//  Copyright © 2016 Triassic Park. All rights reserved.
//

import Foundation
import XCTest
@testable import Triassic

class XSTests: XCTestCase {
    func testNameToken() {
        XCTAssertEqual(XS.NameToken("VVO").description, "VVO")
        XCTAssertEqual(XS.NameToken("V  V\tO ").description, "V VO")
    }

    func testNormalizedString() {
        XCTAssertEqual(XS.NormalizedString(" \nJohn Smith\t").description, " John Smith ")
    }

    func testDateTime() {
        // I hate timezones...
//        let epoch = Date(timeIntervalSince1970: 0)
//        XCTAssertEqual(XS.DateTime(epoch).description, "1970-01-01T01:00:00+01:00")
    }

    func testDuration() {
        let duration1 = XS.Duration(years: 1, days: 3, isNegative: true)
        XCTAssertEqual(duration1.description, "-P1Y3D")

        let duration2 = XS.Duration(months: 2, hours: 1, minutes: 2)
        XCTAssertEqual(duration2.description, "P2MT1H2M")

        let duration3 = XS.Duration(seconds: 10)
        XCTAssertEqual(duration3.description, "PT10S")
    }
}

#if os(Linux)
    extension XSTests {
        static var allTests: [(String, (XSTests) -> () throws -> Void)] {
            return [
                ("testInit", testInit),
            ]
        }
    }
#endif
