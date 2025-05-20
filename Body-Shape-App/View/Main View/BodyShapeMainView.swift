//
//  ContentView.swift
//  Body-Shape-App
//
//  Created by Ronjie Diafante Man-on on 5/20/25.
//

import SwiftUI

struct BodyShapeMainView: View {
    var body: some View {
        VStack {
            IconRight(
                imageName: "circle.grid.cross.fill",
                angle: 45
            )
            .padding()
            
            VStack(alignment: .leading, spacing: 20) {
                WelcomeMessageView(userName: "Emily")
                WeightView( weight: 61.2, weightUnits: "lb")
                
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    BodyShapeMainView()
}
