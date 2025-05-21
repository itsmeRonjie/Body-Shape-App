//
//  TopRowOfSplashView.swift
//  Body-Shape-App
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct TopRowOfSplashView: View {
    var body: some View {
        HStack {
            Image(systemName: "line.3.horizontal")
                .imageScale(.large)
                .fontWeight(.bold)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    TopRowOfSplashView()
}
