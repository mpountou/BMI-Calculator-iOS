import UIKit
struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        let adviceValue = if bmiValue < 18.5 {
            "Underweight"
        } else if bmiValue < 24.9 {
            "Normal"
        } else if bmiValue < 29.5 {
            "Overweight"
        } else {
            "Obese"
        }
        
        let colorValue = if bmiValue < 18.5 {
            UIColor(red: 0.376, green: 0.647, blue: 0.980, alpha: 1)
        } else if bmiValue < 24.9 {
            UIColor(red: 0.133, green: 0.773, blue: 0.369, alpha: 1)
        } else if bmiValue < 29.5 {
            UIColor(red: 0.961, green: 0.620, blue: 0.043, alpha: 1)
        } else {
            UIColor(red: 0.937, green: 0.267, blue: 0.267, alpha: 1)
        }
        
        bmi = BMI(value: bmiValue, advice: adviceValue, color: colorValue)
    }
    
}
