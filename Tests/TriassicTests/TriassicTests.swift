//
//  TriassicTests.swift
//  Triassic
//
//  Created by Kilian Költzsch on 29/11/2016.
//  Copyright © 2016 Triassic Park. All rights reserved.
//

import Foundation
import XCTest
@testable import Triassic

class TriassicTests: XCTestCase {
    func testExample() {
        XCTAssertEqual(Triassic.play(), "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"no\"?>\n<Trias xmlns:siri=\"http://www.siri.org.uk/siri\" version=\"1.0\" xmlns=\"trias\" />")
    }
}

#if os(Linux)
extension TriassicTests {
    static var allTests: [(String, (TriassicTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
#endif
