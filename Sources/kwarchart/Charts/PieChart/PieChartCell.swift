//
//  PieChartCell.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 5/27/21.
//

import SwiftUI

struct PieChartCell: Shape {
    let startAngle: Angle
    let endAngle: Angle
    
    func path(in rect: CGRect) -> Path {
        let center = CGPoint.init(x: (rect.origin.x + rect.width) / 2, y: (rect.origin.y + rect.height) / 2)
        let radii = min(center.x, center.y)
        
        let path = Path { cell in
            cell.addArc(center: center,
                     radius: radii,
                     startAngle: startAngle,
                     endAngle: endAngle,
                     clockwise: true)
            cell.addLine(to: center)
        }
        
        return path
    }
}
