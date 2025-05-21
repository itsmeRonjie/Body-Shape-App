//
//  BackgroundOfSpashView.swift
//  Body-Shape-App
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct BackgroundOfSpashView: View {
    var body: some View {
        GeometryReader { geometry in
            Circle()
                .fill(lightPurple)
                .scaleEffect(2)
                .offset(y: -geometry.size.height*0.3)
        }
    }
}

#Preview {
    BackgroundOfSpashView()
}
