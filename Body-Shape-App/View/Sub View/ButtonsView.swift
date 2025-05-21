//
//  ButtonsView.swift
//  Body-Shape-App
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct ButtonsView: View {
    @State var selectedImage = "house.fill"
    let imageNames = [
        "house.fill",
        "bookmark.fill",
        "alarm.fill",
        "arrow.up.right.square.fill"
    ]
    
    let actionName = [
        "Home",
        "Bookmark",
        "Go to alarm page",
        "Stats"
    ]
    
    var body: some View {
        HStack {
            ForEach(0 ..< imageNames.count, id: \.self) { i in
                OneButtonView(
                    selectedImage: $selectedImage,
                    imageName: imageNames[i],
                    action: { print(actionName[i]) }
                )
            }
        }
    }
}

struct OneButtonView: View {
    @Binding var selectedImage: String
    let imageName: String
    var action: () -> Void = {
        print("Button pressed")
    }
    var isSelected: Bool {
        selectedImage == imageName
    }
    
    var body: some View {
        Button{
            selectedImage = imageName
            action()
        } label: {
            Image(systemName: imageName)
                .imageScale(.large)
                .frame(maxWidth: .infinity)
                .foregroundColor(.black)
                .padding()
                .background(isSelected ? lightGreen : .clear)
                .clipShape(Circle())
        }
    }
}

#Preview {
    ButtonsView()
}
