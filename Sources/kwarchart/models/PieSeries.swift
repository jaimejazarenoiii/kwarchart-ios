//
//  PieSeries.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 5/27/21.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *)
struct PieSeries<T: Any>: Identifiable {
    let id = UUID()
    let data: ChartData<T>
    let color: Color
    let legend: String
}
