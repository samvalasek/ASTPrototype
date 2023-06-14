//
//  NavigationBar.swift
//  ASTPrototype
//
//  Created by Sam Valasek on 14/06/2023.
//

import SwiftUI

struct NavigationBar: View {
    
    var title = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0){
                
            }
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
