//
//  PieChartData.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 6/16/21.
//

import Foundation
import SwiftUI

public struct PieChartData: Identifiable, ChartData {
    public var id = UUID()
    public var key: Any
    public var value: CGFloat
    public var color: Color
    public var legend: String
    
    public init(key: Any, value: CGFloat, color: Color, legend: String) {
        self.key = key
        self.value = value
        self.color = color
        self.legend = legend
    }
}
