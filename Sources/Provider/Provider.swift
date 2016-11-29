//
//  Provider.swift
//  Triassic
//
//  Created by Kilian Költzsch on 16/11/2016.
//  Copyright © 2016 Triassic Park. All rights reserved.
//

import Foundation
import CoreLocation

public protocol Provider {
    static var id: Common.OperatorCode { get }
    static var baseURL: URL { get }
    static var center: CLLocationCoordinate2D { get }

    static func send(_ request: Request, completion: @escaping (TriassicError?) -> Void)
}

public extension Provider {
    static func send(_ request: Request, completion: @escaping (TriassicError?) -> Void) {
        var urlRequest = URLRequest(url: self.baseURL)
        urlRequest.httpMethod = "POST"
        // TODO: Append `request` XML to `urlRequest` body
        URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            print(data ?? "no data received")
            completion(nil)
        }
    }
}
