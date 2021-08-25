//
//  AmountGraphView.swift
//  kwarchart
//
//  Created by Veverly Mae Ricaza on 8/25/21.
//

import SwiftUI

struct AmountGraphView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 35) {
            ForEach(0..<10) { amount in
                Text("\(amount)")
            }
        }
    }
}

struct AmountGraphView_Previews: PreviewProvider {
    static var previews: some View {
        AmountGraphView()
    }
}
