//
//  CalculateBill.swift
//  Tipsy-learningGit
//
//  Created by Łukasz Rajczewski on 06/11/2020.
//

import Foundation

struct CalculateBill {
    
    var tip: Double = 0.1
    var numberOfpeople: Double = 2.0
    var total: String = ""
    
    
    mutating func tipValue(_ currentTip: String) {
        let choosenTip = currentTip.dropLast()
        let tipAsStringOptional = Double(choosenTip)
        
        if let tipAsDouble = tipAsStringOptional {
            tip = tipAsDouble / 100
        }
    }
    
    mutating func numPeople(_ people: Double) {
            numberOfpeople = people
    }
    
    mutating func calculate(_ bill: String) {
        
        let billAsDouble = Double(bill) ?? 0.0
        let value = (billAsDouble + (billAsDouble * tip)) / numberOfpeople
        
        total = String(format: "%.2f", value)
    }
    
    
    
}
