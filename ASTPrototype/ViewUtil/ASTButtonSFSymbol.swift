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
                .font(.system(size: 18, weight: .medium, design: .default))
                .foregroundColor(foregroundColor)
        }
            .frame(width: 300, height: 56)
            .background(backgroundColor)
            .cornerRadius(12)
            .shadow(radius: 10)
    }
}
