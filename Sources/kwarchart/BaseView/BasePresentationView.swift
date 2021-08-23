//
//  BasePresentationView.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 7/2/21.
//

import SwiftUI

struct BasePresentationView<C: View, L: View>: View {
    
    private let chartView: C
    private let legendsView: L
    
    init(@ViewBuilder chartView: @escaping() -> C, @ViewBuilder legendsView: @escaping() -> L) {
        self.chartView = chartView()
        self.legendsView = legendsView()
    }
    
    var body: some View {
       AnyView(horizontalPresentation)
    }
    
    var horizontalPresentation: some View {
        HStack {
            Spacer()
            chartView
            legendsView
            Spacer()
        }
    }
    
    var verticalPresentation: some View {
        VStack {
            Spacer()
            chartView
            legendsView
            Spacer()
        }
    }
}

struct BasePresentationView_Previews: PreviewProvider {
    static var previews: some View {
        KCPieChartPresentationView(pieChartType: PieChartType.normal, chartData: PieChartDataModel(dataModel: ChartSample.pieSeriesSample), legendPosition: .bottom)
    }
}
