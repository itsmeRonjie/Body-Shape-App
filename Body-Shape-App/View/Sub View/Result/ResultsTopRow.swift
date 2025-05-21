//
//  ResultsTopRow.swift
//  Body-Shape-App
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct ResultsTopRow: View {
    @Binding var isShowDashboard: Bool
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Result")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Nov 2021")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
            }
            Spacer()
            Button {
                isShowDashboard.toggle()
            } label: {
                Image(systemName: "arrow.uturn.backward")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .clipShape(Circle())
            }
        }
    }
}

#Preview {
    ResultsTopRow(isShowDashboard: .constant(false))
}
