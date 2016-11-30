//
//  TriassicError.swift
//  Triassic
//
//  Created by Kilian Költzsch on 29/11/2016.
//  Copyright © 2016 Triassic Park. All rights reserved.
//

import Foundation

public enum TriassicError: Error {
    case request(Error?)
    case server
    case notFound
    case malformedData

    case unknown
}
