//
//  ContentView.swift
//  Edutainment
//
//  Created by Mitch Rogers on 5/6/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTable: Int = 12
    @State private var numQuestionsOnTest: Int = 10
    @State private var numCorrect: Int = 0
    @State private var questionCount: Int = 1
    private var numQuestionOptions = [5, 10, 20]
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section("Multiplication table") {
                        Picker("Select desired table", selection: $selectedTable) {
                            ForEach(0...selectedTable, id: \.self) { number in
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

                    Spacer()
                    
                    Text("Problem goes here")
                        .font(.largeTitle)
                        .padding()
                }
            }
            .navigationTitle("Edutainment")
            .safeAreaInset(edge: .bottom) {
                VStack {
                    Text("Score \(numCorrect)")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.green)
                    Text("Test Numbers: \(selectedTable)")
                    Text("Number of Questions: \(numQuestionsOnTest)")
                }
            }
        }
    }
    
    struct Questions {
        let multiplicationTable: Int
        let numQuestions: Int
        
        var questions = [String: Int]()
        
        mutating func generateQuestions() {
            for number in 1...numQuestions {
                let multiplier = Int.random(in: 0...multiplicationTable)
                let question = "\(multiplicationTable) * \(multiplier) = "
                let answer = number * multiplier
                questions[question] = answer
            }
        }
    }
    
//    private func submitAnswer(_ answer: Int) {
//
//    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
