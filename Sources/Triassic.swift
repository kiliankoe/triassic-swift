//
//  Triassic.swift
//  Pods
//
//  Created by Kilian Költzsch on 16/11/2016.
//
//

import Foundation
import AEXML

public class Triassic {
    static func play() {
        let doc = AEXMLDocument()
        let attributes = ["xmlns": "trias", "xmlns:siri": "http://www.siri.org.uk/siri", "version": "1.0"]
        let _ = doc.addChild(name: "Trias", attributes: attributes)

        print(doc.xml)
    }
}
