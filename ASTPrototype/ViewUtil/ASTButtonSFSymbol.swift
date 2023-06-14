//
//  ASTButtonSFSymbol.swift
//  ASTPrototype
//
//  Created by Sam Valasek on 14/06/2023.
//

import UIKit

import SwiftUI

struct ASTButtonSFSymbol: View {
    
    var sfSymbol: String
    var sfSymbolColor: Color
    var bodyText: String
    var foregroundColor: Color
    var backgroundColor: Color

    
    var body: some View {
        HStack {
            Image(systemName: sfSymbol)
                .foregroundColor(sfSymbolColor)
            Text(bodyText)
                .font(.system(size: 18, weight: .semibold, design: .default))
                .foregroundColor(foregroundColor)
        }
            .frame(width: 300, height: 56)
            .background(backgroundColor)
            .cornerRadius(15)
            .shadow(radius: 10)
    }
}

struct ASTButtonSFSymbol_Previews: PreviewProvider {
    static var previews: some View {
        ASTButtonSFSymbol(sfSymbol: "lifepreserver", sfSymbolColor: .red, bodyText: "Support & FAQ", foregroundColor: .black, backgroundColor: .white)
    }
}
