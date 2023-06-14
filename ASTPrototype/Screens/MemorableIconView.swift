//
//  MemorableIconView.swift
//  ASTPrototype
//
//  Created by Sam Valasek on 14/06/2023.
//

import SwiftUI

struct MemorableIconView: View {
    @State var username: String
    
    var body: some View {
        NavigationView {
            VStack {
                UsernameBar(username: username)
                Spacer()
                Buttons()

            }
            .navigationTitle("Login")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Buttons: View {
    var body: some View {
        Button {
            //
        } label: {
            ASTButton(bodyText: "Continue", foregroundColor: .black, backgroundColor: Color.white)
        }
        Button {
            //
        } label: {
            ASTButton(bodyText: "Return to login", foregroundColor: .white, backgroundColor: .black)
        }
        .padding(.bottom)
    }
}
struct MemorableIconView_Previews: PreviewProvider {
    static var previews: some View {
        MemorableIconView(username: "Sam")
    }
}

