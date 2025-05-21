//
//  Body_Shape_AppApp.swift
//  Body-Shape-App
//
//  Created by Ronjie Diafante Man-on on 5/20/25.
//

import SwiftUI

@main
struct Body_Shape_AppApp: App {
    @State var isShowingSplash: Bool = true
    var body: some Scene {
        WindowGroup {
            if isShowingSplash {
                SplashView(isShowingSplash: $isShowingSplash)
            } else {
                MainView()
            }
        }
    }
}
