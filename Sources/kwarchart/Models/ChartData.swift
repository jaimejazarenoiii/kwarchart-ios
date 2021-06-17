//
//  ChartData.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 5/27/21.
//

import Foundation
import SwiftUI

protocol ChartData {
    var key: Any { get set }
    var value: CGFloat { get set }
    var color: Color { get set }
    var legend: String { get set }
}
