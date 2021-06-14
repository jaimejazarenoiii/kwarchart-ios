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
                PieChartCell(startAngle: self.dataModel.angle(for: dataSet.data.value), endAngle: self.dataModel.startingAngle)
                    .foregroundColor(Color(dataSet.data.color))
            }
        }
    }
}

struct PieChartView_Previews: PreviewProvider {
    static var previews: some View {
        PieChartView(dataModel: PieChartDataModel.init(dataModel: ChartSample.pieSeriesSample))
    }
}
