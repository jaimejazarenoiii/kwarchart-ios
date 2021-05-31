//
//  ContentView.swift
//  Kwarchart-Example
//
//  Created by Amiel Jireh Cordova on 4/20/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PieChartView()
                .tabItem {
                   Image(systemName: "chart.pie.fill")
                   Text("Pie Chart")
                }
            
            LineChartView()
                .tabItem {
                    Image(systemName: "arrow.up")
                    Text("Line Chart")
                }
            
            BarChartView()
                .tabItem {
                    Image(systemName: "chart.bar.fill")
                    Text("Bar Chart")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
