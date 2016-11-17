//
//  ModesSupport.swift
//  Pods
//
//  Created by Kilian Költzsch on 16/11/2016.
//
//

import Foundation

/// Types used for the classification of transport modes.
public enum ModesSupport {
    /// Klassifizierung der Individualverkehrsarten.
    public enum IndividualMode {
        case walk
        case cycle
        case taxi
        case selfDriveCar
        case othersDriveCar
        case motorcycle
        case truck
    }

    /// Klassifizierung von kontinuierlichen Verkehrsarten, die zu jeder beliebigen Zeit (ohne Fahrplan) stattfinden können.
    public enum ContinuousMode {
        case walk
        case demandResponsive
        case replacementService
    }

    /// Klassifizierung von Umsteigevorgängen
    public enum InterchangeMode {
        case walk
        case parkAndRide
        case bikeAndRide
        case carHire
        case bikeHire
        case protectedConnection
        case guaranteedConnection
        case remainInVehicle
        case changeWithinVehicle
        case checkIn
        case checkOut
    }

    /// Klassifizierung der ÖV-Verkehrsmittel (nach TPEG pti_table 01).
    public enum PtMode {
        case all
        case unknown
        case air
        case bus
        case trolleyBus
        case tram
        case coach
        case rail
        case intercityRail
        case urbanRail
        case metro
        case water
        case cableway
        case funicular
        case taxi
    }

    /// Unter-Klassifizierung der Züge (nach TPEG pti_table 02).
    public enum RailSubmode {
        case unknown
        case undefined
        case local
        case highSpeedRail
        case suburbanRailway
        case regionalRail
        case interregionalRail
        case longDistance
        case international
        case sleeperRailService
        case nightRail
        case carTransportRailService
        case touristRailway
        case railShuttle
        case replacementRailService
        case specialTrain
        case crossCountryRail
        case rackAndPinionRailway
    }

    /// Unter-Klassifizierung der Überlandbusse (nach TPEG pti_table 03).
    public enum CoachSubmode {
        case unknown
        case undefined
        case internationalCoach
        case nationalCoach
        case shuttleCoach
        case regionalCoach
        case specialCoach
        case sightseeingCoach
        case touristCoach
        case commuterCoach
    }

    /// Unter-Klassifizierung der Untergrundbahnen (nach TPEG pti_table 04).
    public enum MetroSubmode {
        case unknown
        case undefined
        case metro
        case tube
        case urbanRailway
    }

    /// Unter-Klassifizierung der Busse (nach TPEG pti_table 05).
    public enum BusSubmode {
        case unknown
        case undefined
        case localBus
        case regionalBus
        case expressBus
        case nightBus
        case postBus
        case specialNeedsBus
        case mobilityBus
        case mobilityBusForRegisteredDisabled
        case sightseeingBus
        case shuttleBus
        case schoolBus
        case schoolAndPublicServiceBus
        case railReplacementBus
        case demandAndResponseBus
        case airportLinkBus
    }

    /// Unter-Klassifizierung der Straßenbahnen (nach TPEG pti_table 06).
    public enum TramSubmode {
        case unknown
        case undefined
        case cityTram
        case localTram
        case regionalTram
        case sightseeingTram
        case shuttleTram
    }

    /// Unter-Klassifizierung der Wasserverkehrsmittel (nach TPEG pti_table 07).
    public enum WaterSubmode {
        case unknown
        case undefined
        case internationalCarFerry
        case nationalCarFerry
        case regionalCarFerry
        case localCarFerry
        case internationalPassengerFerry
        case nationalPassengerFerry
        case regionalPassengerFerry
        case localPassengerFerry
        case postBoat
        case trainFerry
        case roadFerryLink
        case airportBoatLink
        case highSpeedVehicleService
        case highSpeedPassengerService
        case sightseeingService
        case schoolBoat
        case cableFerry
        case riverBus
        case scheduledFerry
        case shuttleFerryService
    }

    /// Unter-Klassifizierung der Luftverkehrsmittel (nach TPEG pti_table 08).
    public enum AirSubmode {
        case unknown
        case undefined
        case internationalFlight
        case domesticFlight
        case intercontinentalFlight
        case domesticScheduledFlight
        case shuttleFlight
        case intercontinentalCharterFlight
        case internationalCharterFlight
        case roundTripCharterFlight
        case sightseeingFlight
        case helicopterService
        case domesticCharterFlight
        case schengenAreaFlight
        case airshipService
        case shortHaulInternationalFlight
        case canalBarge
    }

    /// Unter-Klassifizierung der Lift- und Aufzugsarten (nach TPEG pti_table 09).
    public enum TelecabinSubmode {
        case unknown
        case undefined
        case telecabin
        case cableCar
        case lift
        case chairLift
        case dragLift
        case telecabinLift
    }

    /// Unter-Klassifizierung der Seilbahnen (nach TPEG pti_table 10).
    public enum FunicularSubmode {
        case unknown
        case funicular
        case allFunicularServices
        case undefinedFunicular
    }

    /// Unter-Klassifizierung der Taxiarten (nach TPEG pti_table 11).
    public enum TaxiSubmode {
        case unknown
        case undefined
        case communalTaxi
        case waterTaxi
        case railTaxi
        case bikeTaxi
        case blackCab
        case miniCab
        case allTaxiServices
    }
}
