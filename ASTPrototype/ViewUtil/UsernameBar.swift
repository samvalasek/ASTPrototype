//
//  UsernameBar.swift
//  ASTPrototype
//
//  Created by Sam Valasek on 14/06/2023.
//

import SwiftUI

struct UsernameBar: View {
    var username: String
        
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(.sRGB, red: 221/255, green: 55/255, blue: 49/255), .blue]), startPoint: .bottomLeading, endPoint: .topTrailing)
                HStack {
                    Text("Hello \(username),")
                        .foregroundColor(.white)
                        .font(.title2)
                        .fontWeight(.medium)
                        .scaledToFit()
                        .minimumScaleFactor(0.6)
                    Spacer()
                    Circle()
                        .frame(width: 60, height: 60)
                        // will eventually be a profile picture image
                    }
                    .padding()
                }

            }.frame(height:100)
        }
}

struct UsernameBar_Previews: PreviewProvider {
    static var previews: some View {
        UsernameBar(username: "Sam")
    }
}
