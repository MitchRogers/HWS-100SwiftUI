//
//  ContentView.swift
//  Edutainment
//
//  Created by Mitch Rogers on 5/6/22.
//

import SwiftUI

struct ContentView: View {
    @State private var testNumbersUpTo: Int = 12
    @State private var numQuestionsOnTest: Int = 10
    @State private var numCorrect: Int = 0
    private var numQuestionOptions = [5, 10, 20]
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section("Multiplication table") {
                        Picker("Select maximum test digit", selection: $testNumbersUpTo) {
                            ForEach(0...testNumbersUpTo, id: \.self) { number in
                                Text("\(number)")
                            }
                        }
                    }
                    
                    Section("Number of Questions") {
                        Picker("Select question count", selection: $numQuestionsOnTest) {
                            ForEach(numQuestionOptions, id: \.self) { count in
                                Text("\(count)")
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                    Button() {
                    
                    }

                    Spacer()
                    
                    Text("Problem goes here")
                        .font(.largeTitle)
                        .padding()
                }
            }
            .navigationTitle("Edutainment")
            .safeAreaInset(edge: .bottom) {
                Text("Score \(numCorrect)")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.green)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
