//
//  ContentView.swift
//  Tip Calculator
//
//  Created by Henry Glaser on 7/25/24.
//

import SwiftUI

struct ContentView: View {
    @State private var billAmount = ""
    @State private var tipPercent = ""
    @State private var numOfPeople = ""
    @State private var tipAmount = 0.0
    @State private var totalBillAmount = 0.0
    var body: some View {
        VStack {
            CustomTextField(placeholder: "Bill Amount", variable: $billAmount)
            CustomTextField(placeholder: "Tip Percentage", variable: $tipPercent)
            CustomTextField(placeholder: "# of People", variable: $numOfPeople)
            Button("Calculate") {
                if let billInput = Double(billAmount) {
                    if let tipInput = Double(tipPercent) {
                        if let nopInput = Double(numOfPeople) {
                            tipAmount = (billInput / (100.0 / tipInput)) / nopInput
                            totalBillAmount = (billInput + tipInput) / nopInput
                        }
                    }
                }
            }
            Text("Tip: $\(String(format:"%.2f", tipAmount)) per person")
            Text("Total Bill: $\(String(format:"%.2f", totalBillAmount)) per person")
        }
        .padding()
    }
}

struct CustomTextField: View {
    let placeholder: String
    var variable: Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(.roundedBorder)
            .multilineTextAlignment(.center)
            .frame(width:200, height:30)
            .font(.body)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
