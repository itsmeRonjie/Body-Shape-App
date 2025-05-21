//
//  ContentView.swift
//  Body-Shape-App
//
//  Created by Ronjie Diafante Man-on on 5/20/25.
//

import SwiftUI

struct DashboardView: View {
    @Binding var isShowDashboard: Bool
    
    var body: some View {
        VStack {
            Button {
                isShowDashboard.toggle()
            } label: {
                IconRight(
                    imageName: "circle.grid.cross.fill",
                    angle: 45)
            }
            .padding()
            
            VStack(alignment: .leading, spacing: 20) {
                WelcomeMessageView(userName: "Ronjie")
                
                WeightView(
                    weight: 61.2,
                    weightUnits: "lb"
                )
                
                DataSummaryView(
                    arrow: "arrow.down",
                    calories: "4.569",
                    numberOfPeopleShowing: 2
                )
                
                Spacer()
                
                ButtonsView()
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    DashboardView(isShowDashboard: .constant(true))
}
