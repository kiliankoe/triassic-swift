//
//  XMLElement.swift
//  Triassic
//
//  Created by Kilian Költzsch on 21/11/2016.
//  Copyright © 2016 Triassic Park. All rights reserved.
//

import Foundation
import AEXML

public protocol XMLElement {
    var name: String { get }
    var value: String? { get }
    var attributes: [String: String] { get }
}

public extension XMLElement {
    var name: String {
        let typeName = "\(type(of: self))"
        return typeName.replacingOccurrences(of: ".Type", with: "")
    }

    var value: String? {
        return nil
    }

    var attributes: [String: String] {
        return [:]
    }
}

extension AEXMLElement {
    func addChild(element: XMLElement) -> AEXMLElement {
        return addChild(name: element.name, value: element.value, attributes: element.attributes)
    }
}
