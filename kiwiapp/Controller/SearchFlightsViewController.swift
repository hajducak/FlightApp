//
//  SearchFlightsViewController.swift
//  kiwiapp
//
//  Created by MacBook Pro on 26.7.18.
//  Copyright © 2018 MacBook Pro. All rights reserved.
//

import UIKit

class SearchFlightsViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var cityFromTextField: UITextField!
    @IBOutlet weak var cityToTextField: UITextField!
    @IBOutlet weak var dateFromTextField: UITextField!
    @IBOutlet weak var dateToTextField: UITextField!
    @IBOutlet weak var passangersTextField: UITextField!
    @IBOutlet weak var adultsTextField: UITextField!
    @IBOutlet weak var childrensTextField: UITextField!
    @IBOutlet weak var infantsTextField: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    let typeOfFlightPickerData = ["oneway", "round", "return", "roundtrip", "multicity"]
    var typeFlight: String?
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return typeOfFlightPickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return typeOfFlightPickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.typeFlight = typeOfFlightPickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let titleData = typeOfFlightPickerData[row]
        let fontOfData = NSAttributedString(string: titleData, attributes: [NSAttributedStringKey.font:UIFont(name: "Georgia", size: 5.0)!,NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)])
        return fontOfData
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
