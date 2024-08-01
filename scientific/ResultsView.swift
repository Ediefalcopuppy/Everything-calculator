//
//  ResultsView.swift
//  everything-calculator
//
//  Created by Harry Haverkamp on 7/31/24.
//

import SwiftUI

struct ResultsView: View {
    @StateObject var calculator = Calculator()
    var result: String
    var selection: String
    var input1: String
    var input2: String
    var body: some View {
        VStack {
            Text("Answer").font(.largeTitle)
            Text("\(input1) \(selection) \(input2) is \(result)")
        }
    }
}

#Preview {
    ResultsView(result: "", selection: "", input1: "", input2: "")
}
