//
//  LastRowOfSplashView.swift
//  Body-Shape-App
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct LastRowOfSplashView: View {
    @Binding var isShowSpashScreen: Bool
    var body: some View {
        HStack {
            ArrowInCircle(isShowSpashScreen: $isShowSpashScreen)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    LastRowOfSplashView(isShowSpashScreen: .constant(true))
}
