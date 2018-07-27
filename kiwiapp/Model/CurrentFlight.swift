//
//  CurrentFlight.swift
//  kiwiapp
//
//  Created by MacBook Pro on 25.7.18.
//  Copyright © 2018 MacBook Pro. All rights reserved.
//

import Foundation

class CurrentFlight {
    let aTimeUTC: Int?
    let dTimeUTC: Int?
    let aTime: Int?
    let dTime: Int?
    let price: Int?
    let distance: Double?
    let cityFrom: String?
    let cityTo: String?
    let id: String?
    let deep_link: String?
    let countryFrom: [String: String]?
    let countryTo: [String: String]?
    let airlines: [String]?
    let fly_duration: String?
    let return_duration: String?
    let baglimit: [String: Int]?
    let route: [[String: Any]]?
    
    struct FlightKeys {
        static let aTimeUTC = "aTimeUTC"
        static let dTimeUTC = "dTimeUTC"
        static let aTime = "aTime"
        static let dTime = "dTime"
        static let price = "price"
        static let distance = "distance"
        static let cityFrom = "cityFrom"
        static let cityTo = "cityTo"
        static let id = "id"
        static let deep_link = "deep_link"
        static let countryFrom = "countryFrom"
        static let countryTo = "countryTo"
        static let airlines = "airlines"
        static let fly_duration = "fly_duration"
        static let return_duration = "return_duration"
        static let baglimit = "baglimit"
        static let route = "route"
    }
    
    init(flightDictionary: [String: Any]) {
        self.aTimeUTC = flightDictionary[FlightKeys.aTimeUTC] as? Int
        self.dTimeUTC = flightDictionary[FlightKeys.dTimeUTC] as? Int
        self.aTime = flightDictionary[FlightKeys.aTime] as? Int
        self.dTime = flightDictionary[FlightKeys.dTime] as? Int
        self.price = flightDictionary[FlightKeys.price] as? Int
        self.distance = flightDictionary[FlightKeys.distance] as? Double
        self.cityFrom = flightDictionary[FlightKeys.cityFrom] as? String
        self.cityTo = flightDictionary[FlightKeys.cityTo] as? String
        self.id = flightDictionary[FlightKeys.id] as? String
        self.deep_link = flightDictionary[FlightKeys.deep_link] as? String
        self.countryFrom = flightDictionary[FlightKeys.countryFrom] as? [String: String]
        self.countryTo = flightDictionary[FlightKeys.countryTo] as? [String: String]
        self.airlines = flightDictionary[FlightKeys.airlines] as? [String]
        self.fly_duration = flightDictionary[FlightKeys.fly_duration] as? String
        self.return_duration = flightDictionary[FlightKeys.return_duration] as? String
        self.baglimit = flightDictionary[FlightKeys.baglimit] as? [String: Int]
        self.route = flightDictionary[FlightKeys.route] as? [[String: Any]]
    }
}
