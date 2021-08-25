//
//  Transaction.swift
//  kwarchart
//
//  Created by Veverly Mae Ricaza on 8/24/21.
//

import Foundation

protocol TransactionData {
    var date: Date { get set}
    var expenses: Double { get set}
    var income: Double { get set}
}

struct Transaction: Identifiable, TransactionData {
    let id = UUID()
    var date: Date
    var expenses: Double
    var income: Double
}



