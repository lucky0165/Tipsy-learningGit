//
//  ResultViewController.swift
//  Tipsy-learningGit
//
//  Created by Łukasz Rajczewski on 06/11/2020.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var optionLabel: UILabel!
    @IBOutlet weak var bill: UILabel!
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    
    var total: String?
    var people: Double = 2
    var tip: Double = 10
    var billValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = total
        optionLabel.text = "Split between \(people) people with \(tip)% tip"
        bill.text = "Bill: \(billValue ?? "0.0")"
        peopleLabel.text = "Split people: \(Int(people))"
        tipLabel.text = "Tip: \(tip)%"
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
