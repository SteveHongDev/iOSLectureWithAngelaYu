//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPtcButton: UIButton!
    @IBOutlet weak var tenPtcButton: UIButton!
    @IBOutlet weak var twentyPtcButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 0.10
    var splitNumber = 2
    var totalToString: String?
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        billTextField.endEditing(true)
        clearSelected()
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        let buttonTitleWithoutPersentSign = String(buttonTitle.dropLast())
        let buttonTitleToDouble = Double(buttonTitleWithoutPersentSign)!
        tip = buttonTitleToDouble / 100
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumber = Int(sender.value)
        splitNumberLabel.text = String(splitNumber)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = billTextField.text!
        if bill != "" {
            let total = Double(bill)! * (1 + tip) / Double(splitNumber)
            totalToString = String(format: "%.2f", total)
        }
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    func clearSelected() {
        zeroPtcButton.isSelected = false
        tenPtcButton.isSelected = false
        twentyPtcButton.isSelected = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.totalValue = totalToString!
            destinationVC.tipValue = tip
            destinationVC.splitNumberValue = splitNumber
        }
    }
    
}

