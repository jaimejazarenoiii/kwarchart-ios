//
//  BarChartView.swift
//  kwarchart
//
//  Created by Veverly Mae Ricaza on 8/24/21.
//

import SwiftUI

struct BarChartView: View {

    var body: some View {
        HStack(spacing: 50) {
            ForEach(0..<5) { month in
                VStack(alignment: .center, spacing: 20) {
                    HStack(alignment: .center, spacing: 0) {
                        VStack {
                            Spacer()
                            Rectangle()
                                .fill(Color.yellow)
                                .frame(width: 10, height: 100)
                        }
                        VStack {
                            Spacer()
                            Rectangle()
                                .fill(Color.red).frame(width: 10, height: 20)
                        }
                    }
                    Text("\(month)")
                      .font(.footnote)
                      .frame(height: 20)
                }
            }
        }
    }
}

struct BarChartView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView()
    }
}
