//
//  SplashView.swift
//  Body-Shape-App
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            BackgroundOfSpashView()
            
            VStack {
                TopRowOfSplashView()
                
                Image(bikeImage)
                    .resizable()
                    .scaledToFit()
                
                Text("Discover How To Shape the Body")
                    .font(.system(size: 48, weight: .bold, design: .serif))
                    .padding(.horizontal)
                
                LastRowOfSplashView()
            }
        }
    }
}

#Preview {
    SplashView()
}
