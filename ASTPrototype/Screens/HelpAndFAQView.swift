//
//  HelpAndFAQView.swift
//  ASTPrototype
//
//  Created by Sam Valasek on 22/05/2023.
//

import SwiftUI

struct HelpAndFAQView: View {
    var body: some View {
        QuestionBoxes()
    }
}

struct QuestionBoxes: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 330, height: 60)
                .foregroundColor(.white)
                .cornerRadius(5)
                .shadow(radius: 5)
            HStack {
                Text("Hello")
            }
        }
    }
}

let questions: [String:String] = [
    "What is AST?": "Ashfield Study Tracker is an application which allows you to track your independant studying at Ashfield Post 16 Centre. Simply login with your QR code to begin.",
    "Where do I find my QR code": "Your personal QR code can be found on the back of your lanyard or alternatively you can use the manual text input code underneath to login to the system. If you do not have either, please see Mrs Draper or contact her.",
    ]


struct HelpAndFAQView_Previews: PreviewProvider {
    static var previews: some View {
        HelpAndFAQView()
    }
}
