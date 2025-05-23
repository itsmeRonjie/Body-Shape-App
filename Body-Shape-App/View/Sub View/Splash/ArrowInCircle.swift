//
//  ArrowInCircle.swift
//  Body-Shape-App
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct ArrowInCircle: View {
    @Binding var isShowSpashScreen: Bool
    
    var body: some View {
        Button {
            isShowSpashScreen.toggle()
        } label: {
            Image(systemName: "arrow.forward")
                .fontWeight(.bold)
                .imageScale(.large)
                .padding(3)
                .overlay(
                    ZStack {
                        Circle()
                        Image(systemName: "arrow.forward")
                            .fontWeight(.bold)
                            .imageScale(.large)
                            .foregroundColor(lightGreen)
                            .offset(x: -6)
                            .scaleEffect(y: 0.7)
                    }
                )
                .padding()
                .background(
                    Circle().fill(lightGreen)
                )
        }
    }
}

#Preview {
    ArrowInCircle(isShowSpashScreen: .constant(true))
}
