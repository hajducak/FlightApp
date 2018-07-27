//
//  ForecastService.swift
//  kiwiapp
//
//  Created by MacBook Pro on 25.7.18.
//  Copyright © 2018 MacBook Pro. All rights reserved.
//

import Foundation
import Alamofire

class ForecastService {
    let forecastBaseURL: URL?
    let specificCall: String
    // locations, flights, flights_multi, check_flights, save_booking, paymill_payment, zooz_payment, watchdog
    
    init(specificCall: String) {
        self.specificCall = specificCall
        self.forecastBaseURL = URL(string: "https://api.skypicker.com/\(specificCall)")
    }
    
    func getCurrentFlight(flyFrom: String, flyTo: String, dateFrom: String, dateTo: String, daysInDestinationFrom: Int, daysInDestinationTo: Int, typeFlight: String, passengers: Int, adults: Int, children: Int, infants: Int, directFlights: Int, currency: String, priceFrom: Int, priceTo: Int, maxFlyDuration: Int, completion: @escaping ([CurrentFlight?]) -> Void ){
        if let forecastURL = URL(string: "\(forecastBaseURL!)?flyFrom=\(flyFrom)&to=\(flyTo)&dateFrom=\(dateFrom)&dateTo=\(dateTo)&daysInDestinationFrom=\(daysInDestinationFrom)&daysInDestinationTo=\(daysInDestinationTo)&typeFlight=\(typeFlight)&passengers=\(passengers)&adults=\(adults)&children=\(children)&infants=\(infants)&directFlights=\(directFlights)&partner=picky&curr=\(currency)&price_from=\(priceFrom)&price_to=\(priceTo)&asc=1&maxFlyDuration=\(maxFlyDuration)") {
            Alamofire.request(forecastURL).responseJSON(completionHandler: { (response) in
                if let jsonDictionary = response.result.value as? [String : Any] {
                    if let currentFlightDictionary = jsonDictionary["data"] as? [[String : Any]]  {
                        var data: [CurrentFlight]? = []
                        var index = 0
                        for _ in 1...currentFlightDictionary.count {
                            let currentFlight = CurrentFlight(JSON: currentFlightDictionary[index])
                            data?.append(currentFlight!)
                            index = index + 1
                        }
                        completion(data!)
                    } else {
                        completion([nil])
                    }
                }
            })
        }
    }
}

