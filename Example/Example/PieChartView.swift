//
//  PieChartView.swift
//  Kwarchart-Example
//
//  Created by Amiel Jireh Cordova on 5/31/21.
//

import SwiftUI
import kwarchart

struct PieChartView: View {
    let pieSeries = [ PieChartData(key: "Shopping", value: 500, color: .red, legend: "Shopping"),
                      PieChartData(key: "Food", value: 1000, color: .blue, legend: "Food"),
                      PieChartData(key: "Electric Bill", value: 500, color: .yellow, legend: "Electricity"),
                      PieChartData(key: "Car", value: 900, color: .green, legend: "Car"),
                      PieChartData(key: "Rent", value: 1000, color: .orange, legend: "Rent"),
                      PieChartData(key: "Insurance", value: 800, color: .black, legend: "Insurance")]
    
    var body: some View {
        VStack(spacing: 10) {
            KCPieChartPresentationView(chartView: ChartSample.pieChartViewSample, chartData: PieChartDataModel(dataModel: pieSeries), legendPosition: LegendPosition.right)
                .frame(width: 300, height: 250, alignment: .center)
                .padding()
            
            Text("Some pie chart")
            
            Text("Some doughnut chart")
        }
    }
}

struct PieChartView_Previews: PreviewProvider {
    static var previews: some View {
        PieChartView()
    }
}
