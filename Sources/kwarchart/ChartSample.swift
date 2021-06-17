//
//  ChartSample.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 5/27/21.
//

import Foundation

public struct ChartSample {
    public static let pieSeriesSample = [PieChartCellData(key: "String", value: 100.0, color: .blue, legend: "String"),
                                       PieChartCellData(key: Double(Date.timeIntervalSinceReferenceDate), value: 100.0, color: .green, legend: "Date???"),
                                       PieChartCellData(key: 0.1, value: 100.0, color: .yellow, legend: "Double"),
                                       PieChartCellData(key: 10, value: 100, color: .red, legend: "Int"),
                                       PieChartCellData(key: " ", value: 100, color: .purple, legend: "Blank"),
                                       PieChartCellData(key: " ", value: 100, color: .black, legend: "String2"),
                                       PieChartCellData(key: " ", value: 100, color: .orange, legend: "String3")]
    
    public static let pieChartViewSample = PieChartView(dataModel: PieChartDataModel(dataModel: pieSeriesSample))
}
