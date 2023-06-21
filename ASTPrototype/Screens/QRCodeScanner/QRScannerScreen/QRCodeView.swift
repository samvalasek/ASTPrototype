//
//  QRCodeView.swift
//  ASTPrototype
//
//  Created by Sam Valasek on 20/06/2023.
//

import SwiftUI

struct QRCodeView: View {
    var body: some View {
        ZStack {
            ScannerView()
                .ignoresSafeArea()
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(.black)
                .opacity(0.4)
            VStack {
                Rectangle()
                    .stroke(.white, lineWidth: 5)
                    .frame(width: 200, height: 200)
                    .cornerRadius(12)
                    .scaledToFill()
                Text("Scan QR Code")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct QRCodeView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeView()
    }
}
