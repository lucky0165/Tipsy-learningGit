//
//  ViewController.swift
//  Tipsy-learningGit
//
//  Created by Łukasz Rajczewski on 06/11/2020.
//

import UIKit

class CalculateViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var tipTextField: UITextField!
    
    var total: String?
    var numberOfPeople: Double = 2.0
    var tipValue: Double = 0.1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipTextField.delegate = self
        billTextField.delegate = self
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        tipTextField.text = ""
    }


    @IBAction func stepperChanged(_ sender: UIStepper) {

        numberOfPeople = sender.value
        splitLabel.text = String(format: "%.0f", numberOfPeople)

        
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        if let bill = billTextField.text, let tip = tipTextField.text {
            
            let billDouble = Double(bill) ?? 0.0
            let tipDouble = Double(tip) ?? 0.1
            
            tipValue = tipDouble / 100
            
            let totalAmount = (billDouble + (billDouble * tipValue)) / numberOfPeople
            
            total = String(format: "%.2f", totalAmount)
            
            performSegue(withIdentifier: "goToResult", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.amountToPay = total ?? ""
            resultVC.people = numberOfPeople
            resultVC.tip = tipValue * 100 
        }
    }
}

