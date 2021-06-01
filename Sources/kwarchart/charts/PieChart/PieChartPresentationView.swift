//
//  PieChartPresentationView.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 5/27/21.
//

import SwiftUI

@available(iOS 13.0, *)
struct PieChartPresentationView: View {
    
    let chartView: PieChartView
    let chartData: [PieSeries<Any>]
    let legendPosition: LegendPosition
    
    var body: some View {
        HStack {
            Spacer()
            chartView
                .aspectRatio(contentMode: .fit)
            VStack(alignment: .leading) {
                ForEach(chartData) { dataSet in
                    HStack {
                        Circle().foregroundColor(dataSet.color).fixedSize()
                        Text(dataSet.legend).font(.footnote)
                        Text("\(dataSet.data.value.description)").font(.footnote)
                    }
                }
            }.aspectRatio(contentMode: .fit)
            Spacer()
        }
    }
}

@available(iOS 13.0, *)
struct PieChartPresentationView_Previews: PreviewProvider {
    static var previews: some View {
        PieChartPresentationView(chartView: ChartSample.pieChartViewSample, chartData: ChartSample.pieSeriesSample, legendPosition: .RIGHT)
    }
}

