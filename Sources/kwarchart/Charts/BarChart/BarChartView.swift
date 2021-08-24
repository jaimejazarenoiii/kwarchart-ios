//
//  BarChartView.swift
//  kwarchart
//
//  Created by Veverly Mae Ricaza on 8/24/21.
//

import SwiftUI

struct BarChartView: View {
//    var transactions: [Transaction]
//
//    func sumMonthlyIncome(_ month: Int) -> Double {
//        self.transactions.filter {
//            Calendar.current.component(.month, from: $0.date) == month + 1
//        }.reduce(0) { $0 + $1.income}
//    }
//
//    func sumMonthlyExpenses(_ month: Int) -> Double {
//        self.transactions.filter {
//            Calendar.current.component(.month, from: $0.date) == month + 1
//        }.reduce(0) { $0 + $1.expenses}
//    }

    var body: some View {
        HStack {
            ForEach(0..<5) { month in
                VStack(alignment: .center, spacing: 2) {
                    HStack(alignment: .center, spacing: 0) {
                        VStack {
                            Spacer()
                            Rectangle()
                                .fill(Color.yellow)
                                .frame(width: 10, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                                .frame(width: 10, height: CGFloat(self.sumMonthlyIncome(month)) * 15.0)
                        }
                        VStack {
                            Spacer()
                            Rectangle()
                                .fill(Color.red).frame(width: 10, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                                .frame(width: 10, height: CGFloat(self.sumMonthlyExpenses(month)) * 15.0)
                        }
                    }
                    Text("\(month)")
                      .font(.footnote)
                      .frame(height: 20)
                }
            }
        }
    }
}

struct BarChartView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView()
    }
}
