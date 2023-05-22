//
//  SplashScreenView.swift
//  ASTPrototype
//
//  Created by Sam Valasek on 18/05/2023.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        VStack {
            //
            Spacer()
            VStack(spacing: 15) {
                Image("ASTLogoWhiteBg")
                        .resizable()
                        .frame(width:125, height: 125)
                    .shadow(radius: 10)
                Text("Ashfield Study Tracker")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
            Spacer()
            Rectangle() // invisible rectangle to ensure spacing
                .frame(height:340)
                .foregroundColor(.white)
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
