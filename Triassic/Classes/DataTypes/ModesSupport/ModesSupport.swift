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
        case walk, cycle, taxi, selfDriveCar, othersDriveCar, motorcycle, truck
    }

    /// Klassifizierung von kontinuierlichen Verkehrsarten, die zu jeder beliebigen Zeit (ohne Fahrplan) stattfinden können.
    public enum ContinuousMode {
        case walk, demandResponsive, replacementService
    }

    /// Klassifizierung von Umsteigevorgängen
    public enum InterchangeMode {
        case walk, parkAndRide, bikeAndRide, carHire, bikeHire, protectedConnection, guaranteedConnection
        case remainInVehicle, changeWithinVehicle, checkIn, checkOut
    }

    /// Klassifizierung der ÖV-Verkehrsmittel (nach TPEG pti_table 01).
    public enum PtMode {
        case all, unknown, air, bus, trolleyBus, tram, coach, rail, intercityRail, urbanRail, metro
        case water, cableway, funicular, taxi
    }

    /// Unter-Klassifizierung der Züge (nach TPEG pti_table 02).
    public enum RailSubmode {
        case unknown, undefined, local, highSpeedRail, suburbanRailway, regionalRail, interregionalRail
        case longDistance, international, sleeperRailService, nightRail, carTransportRailService
        case touristRailway, railShuttle, replacementRailService, specialTrain, crossCountryRail
        case rackAndPinionRailway
    }

    /// Unter-Klassifizierung der Überlandbusse (nach TPEG pti_table 03).
    public enum CoachSubmode {
        case unknown, undefined, internationalCoach, nationalCoach, shuttleCoach, regionalCoach
        case specialCoach, sightseeingCoach, touristCoach, commuterCoach
    }

    /// Unter-Klassifizierung der Untergrundbahnen (nach TPEG pti_table 04).
    public enum MetroSubmode {
        case unknown, undefined, metro, tube, urbanRailway
    }

    /// Unter-Klassifizierung der Busse (nach TPEG pti_table 05).
    public enum BusSubmode {
        case unknown, undefined, localBus, regionalBus, expressBus, nightBus, postBus, specialNeedsBus
        case mobilityBus, mobilityBusForRegisteredDisabled, sightseeingBus, shuttleBus, schoolBus
        case schoolAndPublicServiceBus, railReplacementBus, demandAndResponseBus, airportLinkBus
    }

    /// Unter-Klassifizierung der Straßenbahnen (nach TPEG pti_table 06).
    public enum TramSubmode {
        case unknown, undefined, cityTram, localTram, regionalTram, sightseeingTram, shuttleTram
    }

    /// Unter-Klassifizierung der Wasserverkehrsmittel (nach TPEG pti_table 07).
    public enum WaterSubmode {
        case unknown, undefined, internationalCarFerry, nationalCarFerry, regionalCarFerry, localCarFerry
        case internationalPassengerFerry, nationalPassengerFerry, regionalPassengerFerry, localPassengerFerry
        case postBoat, trainFerry, roadFerryLink, airportBoatLink, highSpeedVehicleService
        case highSpeedPassengerService, sightseeingService, schoolBoat, cableFerry, riverBus, scheduledFerry
        case shuttleFerryService
    }

    /// Unter-Klassifizierung der Luftverkehrsmittel (nach TPEG pti_table 08).
    public enum AirSubmode {
        case unknown, undefined, internationalFlight, domesticFlight, intercontinentalFlight
        case domesticScheduledFlight, shuttleFlight, intercontinentalCharterFlight
        case internationalCharterFlight, roundTripCharterFlight, sightseeingFlight, helicopterService
        case domesticCharterFlight, schengenAreaFlight, airshipService, shortHaulInternationalFlight
        case canalBarge
    }

    /// Unter-Klassifizierung der Lift- und Aufzugsarten (nach TPEG pti_table 09).
    public enum TelecabinSubmode {
        case unknown, undefined, telecabin, cableCar, lift, chairLift, dragLift, telecabinLift
    }

    /// Unter-Klassifizierung der Seilbahnen (nach TPEG pti_table 10).
    public enum FunicularSubmode {
        case unknown, funicular, allFunicularServices, undefinedFunicular
    }

    /// Unter-Klassifizierung der Taxiarten (nach TPEG pti_table 11).
    public enum TaxiSubmode {
        case unknown, undefined, communalTaxi, waterTaxi, railTaxi, bikeTaxi, blackCab, miniCab, allTaxiServices
    }
}
