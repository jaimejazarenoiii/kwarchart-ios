//
//  PieChartDataModel.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 5/27/21.
//

import Foundation
import SwiftUI

final class PieChartDataModel: ObservableObject {
    var chartCellModels: [PieSeries] = []
    var startingAngle = Angle(degrees: 0)
    private var finalRelativeAngle = Angle(degrees: 0)
    
    init(dataModel: [PieSeries]) {
        chartCellModels = dataModel
    }
    
    var totalValue: CGFloat {
        chartCellModels.reduce(CGFloat(0)) { (result, data) -> CGFloat in
            result + data.data.value
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
