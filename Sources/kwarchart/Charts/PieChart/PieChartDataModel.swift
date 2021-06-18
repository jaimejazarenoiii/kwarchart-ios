//
//  PieChartDataModel.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 5/27/21.
//

import Foundation
import SwiftUI

final public class PieChartDataModel: ObservableObject {
    public var chartCellModels: [PieChartData] = []
    var startingAngle = Angle(degrees: 0)
    private var finalRelativeAngle = Angle(degrees: 0)
    
    init(dataModel: [PieChartData]) {
        chartCellModels = dataModel
    }
    
    var totalValue: CGFloat {
        chartCellModels.map { $0.value }.reduce(0, +)
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
