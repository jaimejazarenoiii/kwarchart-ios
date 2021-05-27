//
//  KwarChart.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 5/10/21.
//

import SwiftUI

struct KwarChart {
    
    static func drawPieChart(pieChartType: PieChartType, pieSeries: [PieSeries<Any>], legendPosition: LegendPosition) -> PieChartPresentationView? {
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
