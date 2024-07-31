//
//  ContentView.swift
//  everything-calculator
//
//  Created by Harry Haverkamp on 7/25/24.
//

import SwiftUI

struct ContentView: View {
    @State public var input1 = ""
    @State public var input2 = ""
    @State private var selection = 0
    var body: some View {
        VStack {
            HStack {
                Spacer(minLength: 25)
                TextField("Input 1", text: $input1)
                TextField("Input 2", text: $input2)
            }
            Picker("", selection: $selection) {
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
                    Image(systemName: "")
                    Spacer()
                    Text("Sin")
                }.tag(5)
                HStack {
                    Text("Cos                                  〰")
                }.tag(6)
                HStack {
                    Image(systemName: "")
                    Spacer()
                    Text("Arc Sin")
                }.tag(7)
                HStack {
                    Image(systemName: "")
                    Spacer()
                    Text("Arc Cos")
                }.tag(8)
                HStack {
                    Image(systemName: "chevron.up.square.fill")
                    Spacer()
                    Text("Exponent")
                }.tag(9)
                HStack {
                    Image(systemName: "")
                    Spacer()
                    Text("e^x")
                }.tag(10)
                HStack {
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
/*
 +
 -
 /
 *
 exponent
 e^x
 log
 sin
 arcsin
 cos
 arccos
 tan
 arctan
 */
