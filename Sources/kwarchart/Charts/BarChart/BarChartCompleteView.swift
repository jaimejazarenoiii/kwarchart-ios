//
//  BarChartCompleteView.swift
//  kwarchart
//
//  Created by Veverly Mae Ricaza on 8/25/21.
//

import SwiftUI

struct BarChartCompleteView: View {
    var body: some View {
        HStack(alignment: .bottom, spacing: 10) {
            AmountGraphView().offset(x: 5, y: -25)
            LineGraphView()
        }
        .offset(x: 10, y: -35)
        .overlay(BarChartView(), alignment: .bottom)
    }
}

struct BarChartCompleteView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartCompleteView()
    }
}
