//
//  KwarChart.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 5/10/21.
//

import SwiftUI

@available(iOS 13.0, *)
public struct KwarChart {
    
    public static func drawPieChart(pieChartType: PieChartType, pieSeries: [PieSeries], legendPosition: LegendPosition) -> PieChartPresentationView? {
        var pieChart: PieChartView? = nil
        
        switch (pieChartType) {
        case .NORMAL:
            pieChart = PieChartView(dataModel: PieChartDataModel.init(dataModel: pieSeries))
            break;
        case .DOUGHNUT:
            break;
        }
        
        guard let chartView: PieChartView = pieChart else { return nil }
        let pieChartRepresentation = PieChartPresentationView(chartView: chartView, chartData: pieSeries, legendPosition: legendPosition)
        return pieChartRepresentation
    }
}
