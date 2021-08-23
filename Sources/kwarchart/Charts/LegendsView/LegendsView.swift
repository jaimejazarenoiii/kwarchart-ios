//
//  LegendsView.swift
//  kwarchart
//
//  Created by Amiel Jireh Cordova on 7/5/21.
//

import SwiftUI

struct LegendsView: View {
    
    let chartData: [ChartDataObject]
    let legendPosition: LegendPosition
    let shouldDisplayLegendValue: Bool
    let shouldDisplayLegendPercentage: Bool
    
    public init(chartData: [ChartDataObject], legendPosition: LegendPosition, shouldDisplayLegendValue: Bool) {
        self.chartData = chartData
        self.legendPosition = legendPosition
        self.shouldDisplayLegendValue = shouldDisplayLegendValue
        self.shouldDisplayLegendPercentage = false
    }
    
    var body: some View {
        switch self.legendPosition {
        case .left, .right, .bottom, .top :
            return AnyView(verticalLegendsView)
            
        case .bottomLeft, .bottomRight, .topLeft, .topRight :
            return AnyView(horizontalLegendsView)
        }
    }
    
    private var verticalLegendsView: some View {
        VStack(alignment: .leading) {
            ForEach(chartData) { dataSet in
                HStack(alignment: .center) {
                    Circle()
                        .foregroundColor(dataSet.color).fixedSize()
                    Text(dataSet.legend)
                        .font(.footnote)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    if shouldDisplayLegendValue {
                        Text("\(dataSet.value.description)")
                            .font(.footnote)
                            .frame(maxWidth: .infinity ,alignment: .trailing)
                    }
                }
            }
        }
    }
    
    private var horizontalLegendsView: some View {
        HStack {
            ForEach(chartData) { dataSet in
                HStack {
                    Spacer()
                    Circle().foregroundColor(dataSet.color).fixedSize()
                    Text(dataSet.legend).font(.footnote).fixedSize()
                }
            }
        }
    }
}

struct LegendsView_Previews: PreviewProvider {
    static var previews: some View {
        LegendsView(chartData: ChartSample.sampleLegendsData, legendPosition: .bottom, shouldDisplayLegendValue: true)
    }
}
