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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tipChanged(_ sender: UIButton) {
    }
    @IBAction func stepperChanged(_ sender: UIStepper) {
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
    }
}

