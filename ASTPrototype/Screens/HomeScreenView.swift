//
//  HomeScreenView.swift
//  ASTPrototype
//
//  Created by Sam Valasek on 24/05/2023.
//

import SwiftUI

struct HomeScreenView: View {
    
    @State var username: String
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    UsernameBar(username: username)
                    Spacer()
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 370, height: 250)
                            .padding(.top, 10)
                    }
                }
                .background(Color("backgroundGray"))
                .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView(username: "Sam")
    }
}
