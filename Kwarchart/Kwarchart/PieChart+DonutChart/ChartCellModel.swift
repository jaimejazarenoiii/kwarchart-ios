//
//  ChartCellModel.swift
//  Kwarchart
//
//  Created by Amiel Jireh Cordova on 5/3/21.
//

import SwiftUI

struct ChartCellModel: Identifiable {
    let id = UUID()
    let color: Color
    let value: CGFloat
    let name: String
}

final class ChartDataModel: ObservableObject {
    var chartCellModels: [ChartCellModel] = []
    var startingAngle = Angle(degrees: 0)
    private var finalRelativeAngle = Angle(degrees: 0)
    
    init(dataModel: [ChartCellModel]) {
        chartCellModels = dataModel
    }
    
    var totalValue: CGFloat {
        chartCellModels.reduce(CGFloat(0)) { (result, data) -> CGFloat in
            result + data.value
        }
    }
    
    func angle(for value: CGFloat) -> Angle {
        if startingAngle != finalRelativeAngle {
            startingAngle = finalRelativeAngle
        }
        finalRelativeAngle += Angle(degrees: Double(value / totalValue) * 360)
        print(finalRelativeAngle.degrees)
        return finalRelativeAngle
    }
}
