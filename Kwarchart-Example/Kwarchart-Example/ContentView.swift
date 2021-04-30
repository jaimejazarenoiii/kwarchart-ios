//
//  ContentView.swift
//  Kwarchart-Example
//
//  Created by Amiel Jireh Cordova on 4/20/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello, world!")
//            .padding()
        
//        Path() { path in
//            path.move(to: CGPoint(x: 20, y: 20))
//            path.addLine(to: CGPoint(x: 300, y: 20))
//            path.addLine(to: CGPoint(x: 300, y: 200))
//            path.addLine(to: CGPoint(x: 20, y: 200))
//            path.closeSubpath()
//        }
//        .stroke(Color.green, lineWidth: 10)
        //.fill(Color.green)
        
//        Path() { path in
//            path.move(to: CGPoint(x: 20, y: 60))
//            path.addLine(to: CGPoint(x: 40, y: 60))
//            path.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: 0))
//            path.addLine(to: CGPoint(x: 230, y: 60))
//            path.addLine(to: CGPoint(x: 230, y: 100))
//            path.addLine(to: CGPoint(x: 20, y: 100))
//        }
        
        Path { path in
            path.move(to: CGPoint(x: 200, y: 200))
            path.addArc(center: .init(x: 200, y: 200 ), radius: 150, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 270), clockwise: true)
        }
        .fill(Color.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
