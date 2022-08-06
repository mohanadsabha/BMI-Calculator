//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mohanad on 8/6/22.
//

import UIKit
struct CalculatorBrain {
    var bmi: BMI?
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    mutating func calculateBmi(_ height: Float, _ weight: Float) {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue >= 18.5 && bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat fewer pies!", color: #colorLiteral(red: 1, green: 0.3125756411, blue: 0.1590463946, alpha: 1))
        }
    }
}
