//
//  ViewController.swift
//  Tipsy-learningGit
//
//  Created by Łukasz Rajczewski on 06/11/2020.
//

import UIKit

class CalculateViewController: UIViewController {
    
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitLabel: UILabel!
    
    var numberOfPeople: Double = 2
    var tip: Double = 0.1
    var total: String = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        if let currentTip = sender.currentTitle {
            let choosenTip = currentTip.dropLast()
            let tipOptional = Double(choosenTip)
            
            if let tipAsDouble = tipOptional {
                tip = tipAsDouble / 100
            }
        }
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        numberOfPeople = sender.value
        let numberOfPeopleAsString = String(format: "%.0f", numberOfPeople)
        splitLabel.text = numberOfPeopleAsString
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let bill = billTextField.text!
        let billAsOptional = Double(bill) ?? 0.0
        
        let totalPrice = (billAsOptional + (billAsOptional * tip)) / numberOfPeople
      
        total = String(format: "%.2f", totalPrice)
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }

}

