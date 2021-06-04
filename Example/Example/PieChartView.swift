//
//  PieChartView.swift
//  Kwarchart-Example
//
//  Created by Amiel Jireh Cordova on 5/31/21.
//

import SwiftUI
import kwarchart

struct PieChartView: View {
    let pieSeries = [PieSeries(data: ChartData(key: "Shopping", value: 500), color: .red, legend: "Shopping"),
                    PieSeries(data: ChartData(key: "Food", value: 1000), color: .blue, legend: "Food"),
                    PieSeries(data: ChartData(key: "Electric Bill", value: 500), color: .yellow, legend: "Electricity"),
                    PieSeries(data: ChartData(key: "Car", value: 900), color: .green, legend: "Car"),
                    PieSeries(data: ChartData(key: "Rent", value: 1000), color: .orange, legend: "Rent"),
                    PieSeries(data: ChartData(key: "Insurance", value: 800), color: .black, legend: "Insurance")]

    
    var body: some View {
        VStack(spacing: 10) {
            KwarChart.drawPieChart(pieChartType: .NORMAL, pieSeries: pieSeries, legendPosition: .BOTTOM)
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
