//
//  XMLElement.swift
//  Pods
//
//  Created by Kilian Költzsch on 21/11/2016.
//
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
}

extension AEXMLElement {
    func addChild(element: XMLElement) -> AEXMLElement {
        return addChild(name: element.name, value: element.value, attributes: element.attributes)
    }
}
