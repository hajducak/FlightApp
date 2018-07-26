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
    
    init(flightDictionary: [String: Any]) {
        self.aTimeUTC = flightDictionary["aTimeUTC"] as? Int
        self.dTimeUTC = flightDictionary["dTimeUTC"] as? Int
        self.aTime = flightDictionary["aTime"] as? Int
        self.dTime = flightDictionary["dTime"] as? Int
        self.price = flightDictionary["price"] as? Int
        self.distance = flightDictionary["distance"] as? Double
        self.cityFrom = flightDictionary["cityFrom"] as? String
        self.cityTo = flightDictionary["cityTo"] as? String
        self.id = flightDictionary["id"] as? String
        self.deep_link = flightDictionary["deep_link"] as? String
        self.countryFrom = flightDictionary["countryFrom"] as? [String: String]
        self.countryTo = flightDictionary["countryTo"] as? [String: String]
        self.airlines = flightDictionary["airlines"] as? [String]
        self.fly_duration = flightDictionary["fly_duration"] as? String
        self.return_duration = flightDictionary["return_duration"] as? String
        self.baglimit = flightDictionary["baglimit"] as? [String: Int]
        self.route = flightDictionary["route"] as? [[String: Any]]
    }
}
