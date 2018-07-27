//
//  CurrentFlightTableViewCell.swift
//  kiwiapp
//
//  Created by MacBook Pro on 27.7.18.
//  Copyright © 2018 MacBook Pro. All rights reserved.
//

import UIKit

class CurrentFlightTableViewCell: UITableViewCell {

    @IBOutlet weak var imageFromImageView: UIImageView!
    @IBOutlet weak var cityFromLabel: UILabel!
    @IBOutlet weak var timeFromLabel: UILabel!
    
    @IBOutlet weak var imageToImageView: UIImageView!
    @IBOutlet weak var cityToLabel: UILabel!
    @IBOutlet weak var timeToLabel: UILabel!
    
    // MARK: Data model
    
    var currentFlight : CurrentFlight? {
        didSet {
            self.updateUI()
        }
    }
    
    private func updateUI() {
        cityFromLabel?.text = currentFlight?.cityFrom
        cityToLabel?.text = currentFlight?.cityTo
        timeToLabel?.text = "\(currentFlight?.aTime ?? 0)"
        timeFromLabel?.text = "\(currentFlight?.dTime ?? 0)"
    }

}
