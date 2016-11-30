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
    static func play() -> String {
        let doc = AEXMLDocument()
        let attributes = ["xmlns": "trias", "xmlns:siri": "http://www.siri.org.uk/siri", "version": "1.0"]
        let _ = doc.addChild(name: "Trias", attributes: attributes)

        return doc.xml
    }

    static func locationInformation(query: String, completion: @escaping (TriassicError?, LocationInformationResponse?) -> Void) {
        let xml = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><Trias xmlns=\"trias\" xmlns:siri=\"http://www.siri.org.uk/siri\" version=\"1.0\"><ServiceRequest><siri:RequestorRef></siri:RequestorRef><RequestPayload><LocationInformationRequest><InitialInput><LocationName>\(query)</LocationName><GeoPosition><Longitude>13.6984595</Longitude><Latitude>51.0573802</Latitude></GeoPosition></InitialInput><Restrictions><Type>stop</Type><Language>de</Language><NumberOfResults>10</NumberOfResults></Restrictions></LocationInformationRequest></RequestPayload></ServiceRequest></Trias>"

        VVOProvider.send(raw: xml.data(using: .utf8)!) { error, data in
            completion(error, nil)
        }
    }
}
