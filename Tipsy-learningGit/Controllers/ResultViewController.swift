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
    
    var amountToPay: String = ""
    var people: Double = 2.0
    var tip: Double = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = amountToPay
        optionLabel.text = "Split between \(Int(people)) people with \(Int(tip))% tip."
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
