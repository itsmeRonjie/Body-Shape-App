//
//  CalendarBarView.swift
//  Body-Shape-App
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct CalendarBarView: View {
    let selectedDay = "Thu"
    let dailyData: [DailyData]
    let height: CGFloat
    let offsetY: CGFloat
    let selectedWeight: Int
    let selectedWeightUnits: String = "lb"
    let selectedDim = 70.0
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .stroke(
                        style: StrokeStyle(
                            lineWidth: 0.2,
                            lineCap: .square,
                            dash: [1,5]
                        )
                    )
                    .frame(height: 1)
                
                HStack(alignment: .bottom) {
                    ForEach(dailyData) { data in
                        VerticalDotBar(
                            percent: data.percentage,
                            isSelected: data.day == selectedDay,
                            height: height,
                            offsetY: offsetY,
                            selectedWeight: data.amount
                        )
                        .frame(maxWidth: .infinity)
                    }
                }
                .offset(y: 100 / 2 - 13)
            }
            
            HStack(alignment: .bottom) {
                ForEach(dailyData) { data in
                    VStack {
                        Text(data.day)
                            .frame(maxWidth: .infinity)
                        
                        Text("\(data.amount, specifier: "%02d")")
                            .frame(maxWidth: .infinity)
                    }
                    .fontWeight(data.day == selectedDay ? .bold : .regular)
                }
            }
        }
    }
}

#Preview {
    CalendarBarView(
        dailyData: [
            .init(
                day: "Mon",
                percentage: 0.6,
                amount: 1),
            .init(
                day: "Tue",
                percentage: 0.3,
                amount: 5),
            .init(
                day: "Wed",
                percentage: 0.5,
                amount: 8),
            .init(
                day: "Thu",
                percentage: 1.0,
                amount: 12),
            .init(
                day: "Fri",
                percentage: 0.3,
                amount: 15)
        ],
        height: 100,
        offsetY: -5,
        selectedWeight: 12
    )
}
