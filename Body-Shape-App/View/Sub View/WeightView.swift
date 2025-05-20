//
//  WeightView.swift
//  Body-Shape-App
//
//  Created by Ronjie Diafante Man-on on 5/20/25.
//

import SwiftUI

struct WeightView: View {
    let weight: CGFloat
    let weightUnits: String
    
    var body: some View {
        HStack(spacing: 50) {
            VStack {
                HStack {
                    Text("\(weight, specifier: "%.2f")")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text(weightUnits)
                        .font(.caption)
                        .fontWeight(.semibold)
                }
                Text("Current Weight")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text("2.5")
                        .font(.title)
                    Text(weightUnits)
                        .font(.caption)
                        .fontWeight(.semibold)
                }
                FillBarView(
                    barWidth: 7,
                    colorBG: .black,
                    colorFill: lightGreen,
                    percentage: 0.3
                )
                Text("Left to Gain")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}

#Preview {
    WeightView(
        weight: 61.2,
        weightUnits: "lb"
    )
}
