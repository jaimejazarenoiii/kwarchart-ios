//
//  ChartSample.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 5/27/21.
//

import Foundation

public struct ChartSample {
    public static let pieSeriesSample = [ PieChartData(key: "String", value: 100.0, color: .blue, legend: "String"),
                                        PieChartData(key: Double(Date.timeIntervalSinceReferenceDate), value: 100.0, color: .green, legend: "Date???"),
                                        PieChartData(key: 0.1, value: 100.0, color: .yellow, legend: "Double"),
                                        PieChartData(key: 10, value: 100, color: .red, legend: "Int"),
                                        PieChartData(key: " ", value: 100, color: .purple, legend: "Blank"),
                                        PieChartData(key: " ", value: 100, color: .black, legend: "String2"),
                                        PieChartData(key: " ", value: 100, color: .orange, legend: "String3")]
    
    public static let pieChartViewSample = KCPieChartView(dataModel: PieChartDataModel(dataModel: pieSeriesSample), pieChartType: .normal)
    
    public static let sampleLegendsData = pieSeriesSample.map ({ ChartDataObject(key: $0.key, value: $0.value, color: $0.color, legend: $0.legend) })
}
