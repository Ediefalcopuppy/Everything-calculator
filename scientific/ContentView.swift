//
//  ContentView.swift
//  everything-calculator
//
//  Created by Harry Haverkamp on 7/25/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var calculator = Calculator()
    @State public var textInput1 = ""
    @State public var textInput2 = ""
    @State public var pickerSelection = 0
    var body: some View {
        NavigationView(content: {
           
            VStack {
                HStack {
                    Spacer(minLength: 25)
                    TextField("Input 1", text: $textInput1)
                    TextField("Input 2", text: $textInput2)
                }
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
                            Text("Subtract")
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
                            Text("Sin")
                        }.tag(6)
                        HStack {
                            Text("Cos")
                        }.tag(7)
                        HStack {
                            Text("Tan")
                        }.tag(8)
                        HStack {
                            Text("Arc Sin")
                        }.tag(9)
                        HStack {
                            Text("Arc Cos")
                        }.tag(10)
                        HStack {
                            Text("Arc Tan")
                        }.tag(11)
                        HStack {
                            Text("e^x")
                        }.tag(12)
                        HStack {
                            Text("Log")
                        }.tag(13)
                    }
                }
                Button {
                    calculator.checkPickerSelection()
                } label: {
                    NavigationLink(destination: ResultsView(result: "10", selection: "*", input1: "10", input2: "10"), label: {Text("calculate")})
                }.buttonStyle(.bordered)
                
            }
        })
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

