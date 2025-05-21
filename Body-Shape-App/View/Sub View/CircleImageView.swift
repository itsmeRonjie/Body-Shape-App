//
//  CircleImageView.swift
//  Body-Shape-App
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct CircleImageView: View {
    let imageName: String
    let color: Color
    let size: CGFloat
    let lineWidth: CGFloat
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .overlay(Circle().stroke(color, lineWidth: lineWidth))
            .frame(width: size, height: size)
    }
}

struct CircleCountView: View {
    let count: Int
    let size: CGFloat
    var backgroundColor: Color = .white
    let color: Color
    let lineWidth: CGFloat
    var body: some View {
        ZStack {
            Circle()
                .fill(backgroundColor)
                .overlay(Circle().stroke(color, lineWidth: lineWidth))
            
            Text("+\(count)")
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(color)
                .minimumScaleFactor(0.1)
        }
        .frame(width: size, height: size)
    }
}

#Preview {
    ZStack {
        lightPurple.ignoresSafeArea()
        HStack(spacing: -30) {
            CircleImageView(imageName: person1, color: .white, size: 70, lineWidth: 1)
            
            CircleImageView(imageName: person2, color: .white, size: 70, lineWidth: 1)
            
            CircleImageView(imageName: person3, color: .white, size: 70, lineWidth: 1)
            
            CircleImageView(imageName: person4, color: .white, size: 70, lineWidth: 1)
            
            CircleCountView(count: 8, size: 70, color: .black, lineWidth: 1)
        }
    }
}
