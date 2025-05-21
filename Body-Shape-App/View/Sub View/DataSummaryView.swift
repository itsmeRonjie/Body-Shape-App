//
//  DataSummaryView.swift
//  Body-Shape-App
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct DataSummaryView: View {
    let arrow: String
    let calories: String
    let delta = 10.0
    let percent1 = 0.6
    let percent2 = 0.4
    let numberOfPeopleShowing: Int
    let peopleImages = [
        person1, person2, person3,
        person4, person1, person2
    ]
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack(spacing: 15) {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(lightPurple)
                        .frame(width: geometry.size.width * percent1 - delta)
                        .overlay(
                            VStack {
                                HStack {
                                    Image(systemName: "fork.knife")
                                        .foregroundColor(.black)
                                        .padding()
                                        .background(.white)
                                        .clipShape(Circle())
                                    Text("36%")
                                    Image(systemName: arrow)
                                }
                                HStack(alignment: .bottom) {
                                    Text(calories)
                                        .font(.title2)
                                        .fontWeight(.bold)
                                    Text("Calories")
                                        .font(.subheadline)
                                }
                            }
                        )
                    
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 1)
                        .overlay(
                            VStack {
                                Image(systemName: "figure.walk")
                                    .foregroundColor(.black)
                                    .padding()
                                    .background(lightPurple)
                                    .clipShape(Circle())
                                
                                Text("4.569")
                                    .font(.title2)
                                    .fontWeight(.bold)
                            }
                        )
                        .frame(width: geometry.size.width * (1-percent1) - delta)
                }
                .frame(height: geometry.size.width * (1-percent1) - delta)
                
                HStack(spacing: 15) {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.black)
                        .frame(
                            width: geometry.size.width * percent2 - delta,
                            height: geometry.size.width * percent2 - delta
                        )
                        .overlay(
                            Text("Start")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        )
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.black, lineWidth: 1)
                        .overlay(
                            VStack(alignment: .leading) {
                                Text("Members")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                
                                HStack(spacing: -10) {
                                    let extraPeople = min(peopleImages.count, numberOfPeopleShowing)
                                    let circleDim = 45.0
                                    ForEach(0..<extraPeople, id: \.self) {i in
                                        CircleImageView(
                                            imageName: peopleImages[i],
                                            color: .white,
                                            size: circleDim,
                                            lineWidth: 1
                                        )
                                    }
                                    if peopleImages.count > 2 {
                                        CircleCountView(
                                            count: peopleImages.count - extraPeople,
                                            size: circleDim,
                                            color: .black,
                                            lineWidth: 1
                                        )
                                    }
                                }
                            }
                        )
                }
                .frame(height: geometry.size.width * percent2 - delta)
            }
        }
    }
}

#Preview {
    DataSummaryView(
        arrow: "arrow.down",
        calories: "4.569",
        numberOfPeopleShowing: 2
    )
}
