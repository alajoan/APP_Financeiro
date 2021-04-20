//
//  MoneyData.swift
//  Financeiro
//
//  Created by Jonathan Alajoan Rocha on 12/04/21.
//
import UIKit
import Foundation

class MoneyData {
    var spending: Float
    var nameOfSpending: String
    var dateOfSpending: Date
    var category: String
    
    init(spending: Float, nameOfSpending: String, dateOfSpending: Date, category: String) {
        self.spending = spending
        self.nameOfSpending = nameOfSpending
        self.dateOfSpending = dateOfSpending
        self.category = category
    }
}
