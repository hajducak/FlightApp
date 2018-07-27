//
//  CurrentFlightsViewController.swift
//  kiwiapp
//
//  Created by MacBook Pro on 25.7.18.
//  Copyright © 2018 MacBook Pro. All rights reserved.
//

import UIKit

class CurrentFlightsViewController: UIViewController {
    

    let forecastSpecificCall = "flights"
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        //Skúška ako stiahnut data z netu a nastavit label stiahnutym udajom
        let forecastService = ForecastService(specificCall: forecastSpecificCall)
        forecastService.getCurrentFlight(flyFrom: "CZ", flyTo: "porto", dateFrom: "08/11/2018", dateTo: "08/12/2018", daysInDestinationFrom: 2, daysInDestinationTo: 14, typeFlight: "round", passengers: 1, adults: 1, children: 0, infants: 0, directFlights: 0, currency: "EUR", priceFrom: 1, priceTo: 10000, maxFlyDuration: 10) { (currentFlight) in
            if var currentFlight = currentFlight {
                DispatchQueue.main.async {
                    /*
                     if let cityFrom = currentFlight.cityFrom {
                     self.cityFromLabel.text = "\(cityFrom)"
                     } else {
                     self.cityFromLabel.text = "-"
                     }*/
                }
            }
        }*/
    }
}

    


