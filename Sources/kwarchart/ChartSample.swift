//
//  ChartSample.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 5/27/21.
//

import Foundation

struct ChartSample {
    static let pieSeriesSample = [ PieSeries(data: ChartData(key: "String", value: 100.0), color: .blue, legend: "String"),
                                 PieSeries(data: ChartData(key: Double(Date.timeIntervalSinceReferenceDate), value: 100.0), color: .green, legend: "Date???"),
                                 PieSeries(data: ChartData(key: 0.1, value: 100.0), color: .yellow, legend: "Double"),
                                 PieSeries(data: ChartData(key: 10, value: 100), color: .red, legend: "Int"),
                                 PieSeries(data: ChartData(key: " ", value: 100), color: .purple, legend: "Blank"),
                                 PieSeries(data: ChartData(key: " ", value: 100), color: .black, legend: "String2"),
                                 PieSeries(data: ChartData(key: " ", value: 100), color: .orange, legend: "String3")] as [PieSeries<Any>]
    
    static let pieChartViewSample = PieChartView(dataModel: PieChartDataModel.init(dataModel: ChartSample.pieSeriesSample))
}
