//
//  MainView.swift
//  Body-Shape-App
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct MainView: View {
    @State var isShowDashboard: Bool = true
    
    var body: some View {
        if isShowDashboard {
            DashboardView(isShowDashboard: $isShowDashboard)
        } else {
            ResultView(isShowDashboard: $isShowDashboard)
        }
    }
}

#Preview {
    MainView()
}
