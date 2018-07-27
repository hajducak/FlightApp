//
//  CurrentFlight.swift
//  kiwiapp
//
//  Created by MacBook Pro on 25.7.18.
//  Copyright © 2018 MacBook Pro. All rights reserved.
//

import Foundation
import ObjectMapper

class CurrentFlight: Mappable {
    
    var arrivalTimeUTC: Int?
    var departureTimeUTC: Int?
    var arrivalTime: Int?
    var departureTime: Int?
    var price: Int?
    var distance: Double?
    var cityFrom: String?
    var cityTo: String?
    var id: String?
    var deep_link: String?
    var countryFrom: [String: String]?
    var countryTo: [String: String]?
    var airlines: [String]?
    var fly_duration: String?
    var return_duration: String?
    var baglimit: [String: Int]?
    var route: [[String: Any]]?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        self.arrivalTimeUTC <- map[FlightKeys.arrivalTimeUTC]
        self.departureTimeUTC <- map[FlightKeys.departureTimeUTC]
        self.arrivalTime <- map[FlightKeys.arrivalTime]
        self.departureTime <- map[FlightKeys.departureTime]
        self.price <- map[FlightKeys.price]
        self.distance <- map[FlightKeys.distance]
        self.cityFrom <- map[FlightKeys.cityFrom]
        self.cityTo <- map[FlightKeys.cityTo]
        self.id <- map[FlightKeys.id]
        self.deep_link <- map[FlightKeys.deep_link]
        self.countryFrom <- map[FlightKeys.countryFrom]
        self.countryTo <- map[FlightKeys.countryTo]
        self.airlines <- map[FlightKeys.airlines]
        self.fly_duration <- map[FlightKeys.fly_duration]
        self.return_duration <- map[FlightKeys.return_duration]
        self.baglimit <- map[FlightKeys.baglimit]
        self.route <- map[FlightKeys.route]
    }
    
    struct FlightKeys {
        static let arrivalTimeUTC = "aTimeUTC"
        static let departureTimeUTC = "dTimeUTC"
        static let arrivalTime = "aTime"
        static let departureTime = "dTime"
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
}
