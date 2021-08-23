//
//  PieChartView.swift
//  Kwarchart-Example
//
//  Created by Amiel Jireh Cordova on 5/31/21.
//

import SwiftUI
import kwarchart

struct PieChartView: View {
    let pieSeries = [  PieChartData(key: "Shopping", value: 100.00, color: .red, legend: "Shopping"),
                      PieChartData(key: "Food", value: 100.00, color: .blue, legend: "Food"),
                      PieChartData(key: "Electric Bill", value: 100.00, color: .yellow, legend: "Electricity"),
                      PieChartData(key: "Car", value: 100.00, color: .green, legend: "Car"),
                      PieChartData(key: "Rent", value: 100.00, color: .orange, legend: "Rent"),
                      PieChartData(key: "Insurance", value: 100.00, color: .purple, legend: "Insurance")]
    
    var body: some View {
        VStack(spacing: 10) {
            KCPieChartPresentationView(pieChartType: PieChartType.normal, chartData: PieChartDataModel(dataModel: pieSeries), legendPosition: LegendPosition.right)
                .frame(width: 350, height: 400, alignment: .center)
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
