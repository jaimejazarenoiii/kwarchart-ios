//
//  PieChartPresentationView.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 5/27/21.
//

import SwiftUI

public struct KCPieChartPresentationView: View {
    
    let chartData: PieChartDataModel
    let legendPosition: LegendPosition
    let pieChartType: PieChartType
    let legendsData: [ChartDataObject]
    
    public init(pieChartType: PieChartType, chartData: PieChartDataModel, legendPosition: LegendPosition) {
        self.pieChartType = pieChartType
        self.chartData = chartData
        self.legendPosition = legendPosition
        self.legendsData = chartData.chartCellModels.map ({ ChartDataObject( key: $0.key,
                                                                         value: $0.value,
                                                                         color: $0.color,
                                                                         legend: $0.legend)
        })
    }
    
    public var body: some View {
        BasePresentationView(chartView: {
            KCPieChartView(dataModel: chartData, pieChartType: pieChartType)
                .aspectRatio(contentMode: .fit)
        }, legendsView: {
            LegendsView(chartData: legendsData, legendPosition: .right, shouldDisplayLegendValue: true)
        })
    }
}

struct KCPieChartPresentationView_Previews: PreviewProvider {
    static var previews: some View {
        KCPieChartPresentationView(pieChartType: PieChartType.normal, chartData: PieChartDataModel(dataModel: ChartSample.pieSeriesSample), legendPosition: .right)
    }
}

