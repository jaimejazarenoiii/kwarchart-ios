//
//  ChartData.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 5/27/21.
//

import Foundation
import SwiftUI

public struct ChartData {
    let key: Any
    let value: CGFloat
    let color: Color
    
    public init(key: Any, value: CGFloat, color: Color) {
        self.key = key
        self.value = value
        self.color = color
    }
}
