//
//  LineGraphView.swift
//  kwarchart
//
//  Created by Veverly Mae Ricaza on 8/25/21.
//

import SwiftUI

struct LineGraphView: View {
    var body: some View {
        HStack(alignment: .bottom, spacing: -5) {
            Capsule()
                .fill(Color.gray)
                .frame(width: 5, height: 550)
            VStack(spacing: 50) {
                ForEach(0..<10) { line in
                    Capsule()
                        .fill(Color.gray)
                        .frame(height: 1.5)
                }
                Capsule()
                    .fill(Color.gray)
                    .frame(height: 5)
            }
        }
    }
}

struct LineGraphView_Previews: PreviewProvider {
    static var previews: some View {
        LineGraphView()
    }
}
