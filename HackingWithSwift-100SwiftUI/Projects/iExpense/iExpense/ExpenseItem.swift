//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Mitch Rogers on 5/8/22.
//

import Foundation

struct ExpenseItem: Identifiable, Codable, Equatable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Double
}
