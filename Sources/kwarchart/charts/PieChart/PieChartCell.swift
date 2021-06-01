//
//  PieChartCell.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 5/27/21.
//

import SwiftUI

@available(iOS 13.0, *)
struct PieChartCell: Shape {
    let startAngle: Angle
    let endAngle: Angle
    
    func path(in rect: CGRect) -> Path {
        let center = CGPoint.init(x: (rect.origin.x + rect.width)/2, y: (rect.origin.y + rect.height)/2 )
        let radii = min(center.x, center.y)
        
        let path = Path { p in
            p.addArc(center: center,
                     radius: radii,
                     startAngle: startAngle,
                     endAngle: endAngle,
                     clockwise: true)
            p.addLine(to: center)
        }
        
        return path
    }
}
