//
//  KwarChart.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 5/10/21.
//

import SwiftUI

public struct KwarChart {
    
    public static func drawPieChart(pieChartType: PieChartType, pieSeries: [PieSeries], legendPosition: LegendPosition) -> PieChartPresentationView? {
        var pieChart: PieChartView? = nil
        
        switch (pieChartType) {
        case .normal:
            pieChart = PieChartView(dataModel: PieChartDataModel.init(dataModel: pieSeries))
            break;
        case .doughnut:
            break;
        }
        
        guard let chartView: PieChartView = pieChart else { return nil }
        let pieChartRepresentation = PieChartPresentationView(chartView: chartView, chartData: pieSeries, legendPosition: legendPosition)
        return pieChartRepresentation
    }
}
