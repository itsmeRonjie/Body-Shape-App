//
//  DailyData.swift
//  Body-Shape-App
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import Foundation

struct DailyData: Identifiable {
    let id = UUID()
    let day: String
    let percentage: CGFloat
    let amount: Int
}
