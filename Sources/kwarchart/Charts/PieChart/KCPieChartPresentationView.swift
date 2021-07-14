//
//  PieChartPresentationView.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 5/27/21.
//

import SwiftUI

public struct KCPieChartPresentationView: View {
    
    let chartView: KCPieChartView
    let chartData: PieChartDataModel
    let legendPosition: LegendPosition
    
    public init(chartView: KCPieChartView, chartData: PieChartDataModel, legendPosition: LegendPosition) {
        self.chartView = chartView
        self.chartData = chartData
        self.legendPosition = legendPosition
    }
    
    public var body: some View {
        HStack {
            Spacer()
            chartView
                .aspectRatio(contentMode: .fit)
            VStack(alignment: .leading) {
                ForEach(chartData.chartCellModels) { dataSet in
                    HStack {
                        Circle().foregroundColor(dataSet.color).fixedSize()
                        Text(dataSet.legend).font(.footnote)
                        Text("\(dataSet.value.description)").font(.footnote)
                    }
                }
            }.aspectRatio(contentMode: .fit)
            Spacer()
        }
    }
}

struct KCPieChartPresentationView_Previews: PreviewProvider {
    static var previews: some View {
        KCPieChartPresentationView(chartView: ChartSample.pieChartViewSample, chartData: PieChartDataModel(dataModel: ChartSample.pieSeriesSample), legendPosition: .right)
    }
}

