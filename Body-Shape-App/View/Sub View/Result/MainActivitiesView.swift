//
//  MainActivitiesView.swift
//  Body-Shape-App
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct MainActivitiesView: View {
    let activities: [Activity]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(activities) { activity in
                    CurrentActivitiesView(activity: activity)
                }
            }
            .padding()
        }
    }
}


#Preview {
    MainActivitiesView(
        activities: [
            .init(
                dim: 150,
                activityName: "Running",
                activityImage: "figure.run"
            ),
            .init(
                dim: 150,
                activityName: "Biking",
                activityImage: "figure.outdoor.cycle"
            ),
            .init(
                dim: 150,
                activityName: "Climbing",
                activityImage: "figure.climbing"
            ),
            .init(
                dim: 150,
                activityName: "Skating",
                activityImage: "figure.skating"
            )
        ]
    )
}
