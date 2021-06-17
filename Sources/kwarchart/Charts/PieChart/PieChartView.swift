//
//  PieChartView.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 5/27/21.
//

import SwiftUI

public struct PieChartView: View {
    @State private var selectedCell: UUID = UUID()
    
    var dataModel: PieChartDataModel
    
    public var body: some View {
        ZStack {
            ForEach(dataModel.chartCellModels) { dataSet in
                PieChartCell(startAngle: self.dataModel.angle(for: dataSet.value), endAngle: self.dataModel.startingAngle)
                    .foregroundColor(dataSet.color)
            }
        }
    }
}

struct PieChartView_Previews: PreviewProvider {
    static var previews: some View {
        PieChartView(dataModel: PieChartDataModel(dataModel: ChartSample.pieSeriesSample))
    }
}
