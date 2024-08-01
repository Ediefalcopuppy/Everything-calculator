//
//  Calculator.swift
//  everything-calculator
//
//  Created by Harry Haverkamp on 7/31/24.
//

import Foundation

class Calculator: ObservableObject {
    var input1 = Double(ContentView().textInput1)
    var input2 = Double(ContentView().textInput2)
    var selection = ContentView().pickerSelection
    var result = 0.0
    
    func checkPickerSelection() {
        if selection == 1 {
            add(a: input1 ?? 1.0, b: input2 ?? 1.0)
        } else if selection == 2 {
            subtract(a: input1 ?? 1.0, b: input2 ?? 1.0)
        } else if
    }
    
    func add(a: Double, b: Double) {
        let answer = a + b
        result = answer
    }
    
    func subtract(a: Double, b: Double) {
        let answer = a - b
        result = answer
    }
    
    func multiply(a: Double, b: Double) {
        let answer = a * b
        result = answer
    }
    
    func divide(a: Double, b: Double) {
        let answer = a / b
        result = answer
    }
    
    func exponent(a: Double, b: Double) {
        let answer = Int(a) ^ Int(b)
        result = Double(answer)
    }
    
    func sine(a: Double) {
        let answer = sin(a)
        result = answer
    }
    
    func cosine(a: Double) {
        let answer = cos(a)
        result = answer
    }
    
    func arcsin(a: Double) {
        let answer = Int(sin(a)) ^V -1
        result = Double(answer)
        // arcsin and arccos will always be a whole number due to swift limitations
    }
    
    func arccos(a: Double) {
        let answer = Int(cos(a)) ^  -1
        result = Double(answer)
    }
    
    func exponentalFunction(a: Double, b: Double) {
        let answer = Int(a) ^ Int(b)
        result = Double(answer)
    }
    
    func log(a: Double) {
        let answer = log(a)
        result = answer
    }
    
    func tangent(a: Double) {
        let answer = tan(a)
        result = answer
    }
    
    func arctan(a: Double) {
        let answer = Int(log(a)) ^ -1
        result = answer
    }
}
