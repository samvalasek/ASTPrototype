//
//  SideScreenView.swift
//  ASTPrototype
//
//  Created by Sam Valasek on 14/06/2023.
//

import SwiftUI

struct SideScreenView: View {
    @State var username: String
    
    var body: some View {
        NavigationView {
            ScrollView {
                UsernameBar(username: username)
            }.navigationTitle("Screen Navigation")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct SideScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SideScreenView(username: "Sam")
    }
}
