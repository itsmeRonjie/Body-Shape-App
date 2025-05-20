//
//  WelcomeMessageView.swift
//  Body-Shape-App
//
//  Created by Ronjie Diafante Man-on on 5/20/25.
//

import SwiftUI


struct WelcomeMessageView: View {
    let userName: String
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading, spacing: 15) {
                HStack {
                    Text("Hi,")
                    Text(userName)
                        .fontWeight(.bold)
                }
                .font(.largeTitle)
                
                Text("Your boards looks so good!")
                    .font(.title3)
                    .frame(width: geometry.size.width / 2, alignment: .leading)
                    .multilineTextAlignment(.leading)
            }
        }
    }
}

#Preview {
    WelcomeMessageView(userName: "Ronjie")
}
