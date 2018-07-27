//
//  CurrentFlightsTableViewController.swift
//  kiwiapp
//
//  Created by MacBook Pro on 27.7.18.
//  Copyright © 2018 MacBook Pro. All rights reserved.
//

import UIKit

class CurrentFlightsTableViewController: UITableViewController {

    var data: [CurrentFlight?] = []
    
    var forecastSpecificCall = "flights"
    override func viewDidLoad() {
        super.viewDidLoad()
        let forecastService = ForecastService(specificCall: forecastSpecificCall)
        forecastService.getCurrentFlight(flyFrom: "CZ", flyTo: "porto", dateFrom: "08/11/2018", dateTo: "08/12/2018", daysInDestinationFrom: 2, daysInDestinationTo: 14, typeFlight: "oneway", passengers: 1, adults: 1, children: 0, infants: 0, directFlights: 0, currency: "EUR", priceFrom: 1, priceTo: 10000, maxFlyDuration: 10) { (currentFlight) in
                self.data = currentFlight
                self.tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "onewayFlightCell", for: indexPath) as! CurrentFlightTableViewCell
        let currentFlight = data[indexPath.row]
        cell.currentFlight = currentFlight
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
