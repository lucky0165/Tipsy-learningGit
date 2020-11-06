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
    
    var calculateBill = CalculateBill()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        billTextField.text = ""
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = true
        twentyPctButton.isSelected = false
        
        splitLabel.text = "2"
    }
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        if let currentTip = sender.currentTitle {
            calculateBill.tipValue(currentTip)
        }
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        let numberOfPeople = sender.value
        let numberOfPeopleAsString = String(format: "%.0f", numberOfPeople)
        splitLabel.text = numberOfPeopleAsString
        
        calculateBill.numPeople(numberOfPeople)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let bill = billTextField.text!

        calculateBill.calculate(bill)
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.total = calculateBill.total
            resultVC.people = calculateBill.numberOfpeople
            resultVC.tip = calculateBill.tip * 100
            
        }
    }
    
}

