//
//  ForecastService.swift
//  kiwiapp
//
//  Created by MacBook Pro on 25.7.18.
//  Copyright © 2018 MacBook Pro. All rights reserved.
//
/*  https://api.skypicker.com/flights?flyFrom=CZ&to=porto&dateFrom=08/11/2018&dateTo=08/12/2018&daysInDestinationFrom=2&daysInDestinationTo=14&typeFlight=round&passengers=1&adults=1&children=0&infants=0&directFlights=0&partner=picky&curr=EUR&price_from=1&price_to=10000&asc=1&maxFlyDuration=10
 */

import Foundation

class ForecastService {
    let forecastBaseURL: URL?
    let specificCall: String // locations, flights, flights_multi, check_flights, save_booking, paymill_payment, zooz_payment, watchdog
    
    init(specificCall: String) {
        self.specificCall = specificCall
        self.forecastBaseURL = URL(string: "https://api.skypicker.com/\(specificCall)")
    }
    
    func getForecast(flyFrom: String, flyTo: String, dateFrom: String, dateTo: String, daysInDestinationFrom: Int, daysInDestinationTo: Int, typeFlight: String, passengers: Int, adults: Int, children: Int, infants: Int, directFlights: Int, currency: String, priceFrom: Int, priceTo: Int, maxFlyDuration: Int, completion: @escaping (CurrentFlight?) -> Void ) {
        if let forecastURL = URL(string: "\(forecastBaseURL!)?flyFrom=\(flyFrom)&to=\(flyTo)&dateFrom=\(dateFrom)&dateTo=\(dateTo)&daysInDestinationFrom=\(daysInDestinationFrom)&daysInDestinationTo=\(daysInDestinationTo)&typeFlight=\(typeFlight)&passengers=\(passengers)&adults=\(adults)&children=\(children)&infants=\(infants)&directFlights=\(directFlights)&partner=picky&curr=\(currency)&price_from=\(priceFrom)&price_to=\(priceTo)&asc=1&maxFlyDuration=\(maxFlyDuration)") {
            let networkProcessor = NetworkProcessor(url: forecastURL)
            networkProcessor.downloadJSONFromURL({ (JSONDictionary) in
                if let currentFlightDictionary = JSONDictionary?["data"] as? [[String : Any]]   {
                    let currentFlight = CurrentFlight(flightDictionary: currentFlightDictionary[1]) // Iba prvý objekt takze iba jeden flight vypišem
                    completion(currentFlight)
                } else {
                    completion(nil)
                }
            })
        }
    }
}

