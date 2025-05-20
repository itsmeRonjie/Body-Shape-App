//
//  IconRight.swift
//  Body-Shape-App
//
//  Created by Ronjie Diafante Man-on on 5/20/25.
//

import SwiftUI

struct IconRight: View {
    let imageName: String
    var angle = 0.0
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: imageName)
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .clipShape(Circle())
                .rotation3DEffect(.degrees(angle), axis: (x: 0, y: 0, z: 1))
        }
    }
}

struct IconRight_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            IconRight(imageName: "circle.grid.cross.fill")
                .padding()
            Spacer()
        }
    }
}
