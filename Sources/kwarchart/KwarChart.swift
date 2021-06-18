//
//  KwarChart.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 5/10/21.
//

import SwiftUI

public struct KwarChart {
    
    public static func drawPieChart(pieChartType: PieChartType, chartData: [PieChartData], legendPosition: LegendPosition) -> PieChartPresentationView? {
        var pieChart: PieChartView? = nil
        
        let chartDataModel: PieChartDataModel = PieChartDataModel(dataModel: chartData)
        
        switch (pieChartType) {
        case .normal:
            pieChart = PieChartView(dataModel: chartDataModel)
            break;
        case .doughnut:
            break;
        }
        
        guard let chartView: PieChartView = pieChart else { return nil }
        let pieChartRepresentation = PieChartPresentationView(chartView: chartView, chartData: chartDataModel, legendPosition: legendPosition)
        return pieChartRepresentation
    }
}
