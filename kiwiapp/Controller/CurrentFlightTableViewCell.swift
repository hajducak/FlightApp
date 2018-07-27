//
//  CurrentFlightTableViewCell.swift
//  kiwiapp
//
//  Created by MacBook Pro on 27.7.18.
//  Copyright © 2018 MacBook Pro. All rights reserved.
//

import UIKit
import ObjectMapper

class CurrentFlightTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageFlightImageView: UIImageView!
    @IBOutlet weak var cityFromLabel: UILabel!
    @IBOutlet weak var departureTimeLabel: UILabel!
    @IBOutlet weak var cityToLabel: UILabel!
    @IBOutlet weak var arrivalTimeLabel: UILabel!
    @IBOutlet weak var dateOfFlight: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    
    // MARK: Data model
    
    var currentFlight : CurrentFlight? {
        didSet {
            self.updateUI()
        }
    }
    
    private func updateUI() {
        cityFromLabel?.text = currentFlight?.cityFrom
        cityToLabel?.text = currentFlight?.cityTo
        let arrivalTimeStruct = StopWatch(totalSeconds: (currentFlight?.arrivalTime)!)
        arrivalTimeLabel?.text = "\(arrivalTimeStruct.hours)h \(arrivalTimeStruct.minutes)m"
        let departuretimeStruct = StopWatch(totalSeconds: (currentFlight?.departureTime)!)
        departureTimeLabel?.text = "\(departuretimeStruct.hours)h \(departuretimeStruct.minutes)m"
        let date = Date(timeIntervalSince1970: Double((currentFlight?.arrivalTime)!))
        dateOfFlight.text = date.stringTime
        durationLabel?.text = currentFlight?.fly_duration
        priceLabel?.text = "\((currentFlight?.price)!)"
        // TODO: add Currency behaind price
        imageFlightImageView.image = UIImage(named: "FR.png")
    }
    
    struct StopWatch {
        var totalSeconds: Int
        var hours: Int {
            return (totalSeconds % 86400) / 3600
        }
        var minutes: Int {
            return (totalSeconds % 3600) / 60
        }
        var seconds: Int {
            return totalSeconds % 60
        }
    }
}

enum App {
    static let dateFormater = DateFormatter()
}

extension DateFormatter {
    
    func setDateFormater(format: String = "EEEE, MMM d, yyyy", dateStyle: DateFormatter.Style = .medium, timeStyle: DateFormatter.Style = .none,
                         locale: Locale = Locale.current) {
        self.dateFormat = format
        self.dateStyle = dateStyle
        self.timeStyle = timeStyle
        self.locale = Locale.current
    }
}

extension Date {
    var stringTime: String {
        App.dateFormater.setDateFormater()
        return App.dateFormater.string(from: self)
    }
}

