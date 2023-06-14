//
//  ASTButton.swift
//  ASTPrototype
//
//  Created by Sam Valasek on 14/06/2023.
//

import SwiftUI

struct ASTButton: View {
    var bodyText: String
    var foregroundColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(bodyText)
            .font(.system(size: 20, weight: .semibold, design: .default))
            .frame(width: 300, height: 56)
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .cornerRadius(15)
            .shadow(radius: 10)
    }
}

struct ASTButton_Previews: PreviewProvider {
    static var previews: some View {
        ASTButton(bodyText: "Continue", foregroundColor: .white, backgroundColor: .black)
    }
}
