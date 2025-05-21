//
//  FillBarView.swift
//  Body-Shape-App
//
//  Created by Ronjie Diafante Man-on on 5/20/25.
//

import SwiftUI

struct FillBarView: View {
    let barWidth: CGFloat
    let colorBG: Color
    let colorFill: Color
    let percentage: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(colorBG)
                    .frame(
                        width: .infinity,
                        height: barWidth
                    )
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(colorFill)
                    .frame(
                        width: geometry.size.width * percentage,
                        height: barWidth
                    )
            }
        }
        .frame(
            width: .infinity,
            height: barWidth
        )
    }
}

#Preview {
    FillBarView(
        barWidth: 7,
        colorBG: .black,
        colorFill: lightGreen,
        percentage: 0.3)
    .padding()
}
