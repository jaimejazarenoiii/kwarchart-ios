//
//  LegendsDataModel.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 7/16/21.
//

import SwiftUI

final public class LegendsDataModel: ObservableObject {
    public var chartCellModels: [PieChartData] = []
    public let dataSetTotalValue: Float
    
    public init (chartCellModel: [PieChartData], dataSetTotalValue: Float) {
        chartCellModels = chartCellModel
        self.dataSetTotalValue = dataSetTotalValue
    }
}
