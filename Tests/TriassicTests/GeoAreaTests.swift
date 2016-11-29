//
//  GeoAreaTests.swift
//  Triassic
//
//  Created by Kilian Költzsch on 29/11/2016.
//  Copyright © 2016 Triassic Park. All rights reserved.
//

import Foundation
import XCTest
@testable import Triassic

class GeoAreaTests: XCTestCase {
    func testInit() {
        let pos1 = Utility.GeoPosition(longitude: 1.0, latitude: 1.0, altitude: 0.0)
        let pos2 = Utility.GeoPosition(longitude: 2.0, latitude: 2.0, altitude: 0.0)
        let pos3 = Utility.GeoPosition(longitude: 3.0, latitude: 3.0, altitude: 0.0)

        guard let _ = GeoArea(polylinePoints: [pos1, pos2, pos3]) else {
            XCTFail("GeoArea with 3 points should not be nil")
            return
        }

        if let _ = GeoArea(polylinePoints: [pos1, pos2]) {
            XCTFail("GeoArea with 2 points should be nil")
        }

        if let _ = GeoArea(polylinePoints: [pos1]) {
            XCTFail("GeoArea with 1 point should be nil")
        }

        if let _ = GeoArea(polylinePoints: []) {
            XCTFail("GeoArea with 0 points should be nil")
        }
    }
}

#if os(Linux)
    extension GeoAreaTests {
        static var allTests : [(String, (GeoAreaTests) -> () throws -> Void)] {
            return [
                ("testInit", testInit),
            ]
        }
    }
#endif
