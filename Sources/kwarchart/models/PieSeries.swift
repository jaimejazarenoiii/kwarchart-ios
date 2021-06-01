//
//  PieSeries.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 5/27/21.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *)
public struct PieSeries: Identifiable {
    public let id = UUID()
    let data: ChartData
    let color: Color
    let legend: String
    
    public init(data: ChartData, color: Color, legend: String) {
        self.data = data
        self.color = color
        self.legend = legend
    }
}
