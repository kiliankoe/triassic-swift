//
//  LocationInformationResponse.swift
//  Triassic
//
//  Created by Kilian Költzsch on 30/11/2016.
//  Copyright © 2016 Triassic Park. All rights reserved.
//

import Foundation

public struct LocationInformationResponse {
    public let continueAt: UInt?
    public let errors: [LocationError]?
    public let locations: [LocationResult]?
}
