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
    
    var normalPieChart: some View {
        ForEach(dataModel.chartCellModels) { dataSet in
            PieChartCell(startAngle: self.dataModel.angle(for: dataSet.value), endAngle: self.dataModel.startingAngle)
                .foregroundColor(dataSet.color)
        }
    }
    
    public var body: some View {
        ZStack {
            switch(pieChartType) {
            case .normal :
                normalPieChart
            case .doughnut:
                normalPieChart
                InnerCircle(ratio: 1/2).foregroundColor(.white)
            }
        }
    }
}

struct InnerCircle: Shape {
    let ratio: CGFloat
    func path (in rect: CGRect) -> Path {
        let center = CGPoint.init( x: (rect.origin.x + rect.width)/2,
                                  y: (rect.origin.y + rect.height)/2)
        let radii = min(center.x, center.y) * ratio
        let path = Path { p in
            p.addArc(center: center,
                     radius: radii,
                     startAngle: Angle(degrees: 0),
                     endAngle: Angle(degrees: 360),
                     clockwise: true)
            p.addLine(to: center)
        }
        
        return path
    }
}

struct PieChartView_Previews: PreviewProvider {
    static var previews: some View {
        KCPieChartView(dataModel: PieChartDataModel(dataModel: ChartSample.pieSeriesSample), pieChartType: .doughnut)
    }
}
