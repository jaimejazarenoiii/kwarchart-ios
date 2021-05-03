//
//  PieChartView.swift
//  Kwarchart
//
//  Created by Amiel Jireh Cordova on 5/3/21.
//

import SwiftUI

struct PieChartView: View {
    @State private var selectedCell: UUID = UUID()
    
    let dataModel: ChartDataModel
    //let onTap: (ChartCellModel?) -> ()
    
    var body: some View {
        ZStack {
            ForEach(dataModel.chartCellModels) { dataSet in
                PieChartCell(startAngle: self.dataModel.angle(for: dataSet.value), endAngle: self.dataModel.startingAngle)
                    .foregroundColor(dataSet.color)
            }
        }
    }
}
