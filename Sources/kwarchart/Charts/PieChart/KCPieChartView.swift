//
//  PieChartView.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 5/27/21.
//

import SwiftUI

public struct KCPieChartView: View {
    @State private var selectedCell: UUID = UUID()
    
    var dataModel: PieChartDataModel
    var pieChartType: PieChartType
    
    public var body: some View {
        ZStack {
            switch(pieChartType) {
            case .normal :
                ForEach(dataModel.chartCellModels) { dataSet in
                    PieChartCell(startAngle: self.dataModel.angle(for: dataSet.value), endAngle: self.dataModel.startingAngle)
                        .foregroundColor(dataSet.color)
                }
            case .doughnut:
                ForEach(dataModel.chartCellModels) { dataSet in
                    PieChartCell(startAngle: self.dataModel.angle(for: dataSet.value), endAngle: self.dataModel.startingAngle)
                        .foregroundColor(dataSet.color)
                }

            }
        }
    }
}

struct PieChartView_Previews: PreviewProvider {
    static var previews: some View {
        KCPieChartView(dataModel: PieChartDataModel(dataModel: ChartSample.pieSeriesSample), pieChartType: .normal)
    }
}
