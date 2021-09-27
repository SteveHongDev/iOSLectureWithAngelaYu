//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by 홍성범 on 2021/09/27.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / pow(height, 2)
    }
    
    func getBMIValue() -> String {
        guard let bmi = bmi else {
            return "ERROR"
        }
        
        return String(format: "%.1f", bmi)
    }
    
}
