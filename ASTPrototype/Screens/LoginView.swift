//
//  LoginView.swift
//  ASTPrototype
//
//  Created by Sam Valasek on 17/05/2023.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack(spacing: 0) {
            LoginMainView()
            LoginButtons()
            Text("AST Dev Build 1, built by Sam Valasek")
                .font(.footnote)
        }
    }
}
struct LoginMainView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(.sRGB, red: 221/255, green: 55/255, blue: 49/255), .blue]), startPoint: .bottomLeading, endPoint: .topTrailing)
                .ignoresSafeArea()
            VStack {
                Spacer()
                
                VStack(spacing: 20) {
                    Image("ASTLogoWhiteBg")
                            .resizable()
                            .frame(width:125, height: 125)
                        .shadow(radius: 10)
                    Text("Ashfield Study Tracker")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                Spacer()
                FactCarousel()
            }
        }
    }
}

struct FactCarousel: View {
    var body: some View {
        TabView {
            Text("Losing sleep leads to worse memory recall. Your brain stores new information as you sleep, be sure to get plenty of rest.")
            Text("Make sure to recall new things, your brain loses information if it is not used in a while")
            Text("Be sure to learn something new. Once you know something, your brain reduces blood flow and this leads to daydreaming.")
        }
        .multilineTextAlignment(.center)
        .foregroundColor(.white)
        .font(.system(size: 14))
        .fontWeight(.semibold)
        .frame(width: 380, height: 140)
        .padding(.horizontal, 30.0)
        .tabViewStyle(.page)
    }
}

struct LoginButtons: View {
    var body: some View {
        VStack {
            Button { //LoginWithQR button
                //
            } label: {
                HStack {
                    Image(systemName: "qrcode")
                    Text("Login with QR code")
                        .fontWeight(.semibold)
                }
                .foregroundColor(Color.white)
            }
            .frame(width:300, height: 56)
            .background(Color.black)
            .cornerRadius(CGFloat(10))
            .shadow(radius: 5)
            Button { //Support button
                //
            } label: {
                HStack {
                    Image(systemName: "lifepreserver")
                        .foregroundColor(.red)
                    Text("Support & FAQ")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                }
            }
            .frame(width:300, height: 56)
            .background(Color.white)
            .cornerRadius(CGFloat(10))
            .shadow(radius: 5)
        }.frame(height: 200)
    
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
