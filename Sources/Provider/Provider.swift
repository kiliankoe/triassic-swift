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

    static func send(request: Request, completion: @escaping (TriassicError?) -> Void)
}

public extension Provider {
    static func send(request: Request, completion: @escaping (TriassicError?, Data?) -> Void) {
        // TODO: Use actual request xml data
//        guard let data = request.xml.data(using: .utf8) else { return }
        let data = "".data(using: .utf8)!

        send(raw: data, completion: completion)
    }

    static func send(raw body: Data, completion: @escaping (TriassicError?, Data?) -> Void) {
        var urlRequest = URLRequest(url: self.baseURL)
        urlRequest.httpMethod = "POST"
        urlRequest.httpBody = body
        URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            guard let data = data, let response = response as? HTTPURLResponse else {
                completion(.request(error), nil)
                return
            }

            switch response.statusCode/100 {
            case 4:
                completion(.notFound, nil)
                return
            case 5:
                completion(.server, nil)
                return
            default:
                break
            }

            completion(nil, data)
        }.resume()
    }
}
