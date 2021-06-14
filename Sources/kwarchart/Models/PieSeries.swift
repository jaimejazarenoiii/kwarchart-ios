//
//  PieSeries.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 5/27/21.
//

import Foundation
import SwiftUI

public struct PieSeries: Identifiable {
    public let id = UUID()
    let data: ChartData
    let legend: String
    
    public init(data: ChartData, legend: String) {
        self.data = data
        self.legend = legend
    }
}
