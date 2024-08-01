//
//  ContentView.swift
//  everything-calculator
//
//  Created by Harry Haverkamp on 7/25/24.
//

import SwiftUI

struct ContentView: View {
    @State private var textInput1 = ""
    @State private var textInput2 = ""
    @State private var pickerSelection = 1
    @State private var notUsed = false
    @State private var unavailableOpacity = 1.0
    @State private var resultString = "0.0"
    var body: some View {
        NavigationView(content: {
            VStack {
                HStack {
                    Spacer(minLength: 25)
                    TextField("First Number", text: $textInput1)
                    TextField("Second Number", text: $textInput2).disabled(notUsed).opacity(unavailableOpacity)
                }.offset(x: notUsed ? 121 : 0) //moves the 1st textfield to the center if the second text field isn't used
                Picker("", selection: $pickerSelection) {
                    Group {
                        HStack {
                            Image(systemName: "plus.app.fill").imageScale(.large)
                            Spacer()
                            Text("Add")
                        }.tag(1)
                        HStack {
                            Image(systemName: "minus.square.fill").imageScale(.large)
                            Spacer()
                            Text("Subtract").clipShape(Circle())
                        }.tag(2)
                        HStack {
                            Image(systemName: "multiply.square.fill")
                            Spacer()
                            Text("Multiply")
                        }.tag(3)
                        HStack {
                            Image(systemName: "divide.square.fill")
                            Spacer()
                            Text("Divide")
                        }.tag(4)
                        HStack {
                            Image(systemName: "chevron.up.square.fill")
                            Spacer()
                            Text("Exponent")
                        }.tag(5)
                    }
                    Group {
                        HStack {
                            Text("Sine")
                        }.tag(6)
                        HStack {
                            Text("Cosine")
                        }.tag(7)
                        HStack {
                            Text("Tangent")
                        }.tag(8)
                        HStack {
                            Text("Inverse Sine")
                        }.tag(9)
                        HStack {
                            Text("Inverse Cosine")
                        }.tag(10)
                        HStack {
                            Text("Inverse Tangent")
                        }.tag(11)
                        HStack {
                            Text("e^x")
                        }.tag(12)
                    }
                }
                .onChange(of: pickerSelection) {
                    if pickerSelection < 6 {
                        notUsed = false
                        unavailableOpacity = 1.0
                    }
                    else {
                        textInput2 = ""
                        notUsed = true
                        unavailableOpacity = 0.0
                    }
                }
                Button(action: {
                    if let num1 = Double(textInput1) {
                        if !notUsed {
                            if let num2 = Double(textInput2) {
                                resultString = calculate(function: pickerSelection, a: num1, b: num2)
                                
                            }
                        }
                        else{
                            resultString = calculate(function: pickerSelection, a: num1, b: 0)
                        }
                    }
                }, label: {
                    Text("Calculate")
                })
                .buttonStyle(.bordered)
                Text(resultString).font(.title).fontWeight(.heavy)
            }
        })
    }
    
    func calculate(function: Int, a: Double, b: Double) -> String { // sometimes b is unused
        if function == 1 {
            return String(a + b)
        }
        else if function == 2 {
            return String(a - b)
        }
        else if function == 3 {
            return String(a * b)
        }
        else if function == 4 {
            return String(a / b)
        }
        else if function == 5 {
            return String(pow(a, b))
        }
        else if function == 6 {
            return String(sin(a))
        }
        else if function == 7 {
            return String(cos(a))
        }
        else if function == 8 {
            return String(tan(a))
        }
        else if function == 11 {
            return String(atan(a))
        }
        else if function == 12 {
            return String(exp(a))
        }
        else if a >= -1 && a <= 1 {
            if function == 9 {
                return String(asin(a))
            }
            else if function == 10 {
                return String(acos(a))
            }
        }
        else {
            return "Function domain is -1 <= x <= 1."
        }
        return "0.0"
    }
}

#Preview {
    ContentView()
}
/*
 + 1
 - 2
 / 3
 * 4
 exponent 5
 e^x 12
 log 13
 sin 6
 arcsin 9
 cos 7
 arccos 10
 tan 8
 arctan 11
 */

