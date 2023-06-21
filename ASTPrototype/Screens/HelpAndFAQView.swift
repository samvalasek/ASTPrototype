//
//  HelpAndFAQView.swift
//  ASTPrototype
//
//  Created by Sam Valasek on 22/05/2023.
//

import SwiftUI

struct HelpAndFAQView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(FAQQuestions.questions) { question in
                        QuestionBoxes(questionTitle: question.questionTitle, questionAnswer: question.questionAnswer)
                    }
                }.navigationTitle("Support & FAQ")
            }
        }
    }
}
struct QuestionBoxes: View {
    let questionTitle: String
    let questionAnswer: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 350, height: 150)
                .foregroundColor(.white)
                .cornerRadius(12)
                .shadow(radius: 5)
            VStack(alignment: .leading) {
                Text(questionTitle)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(questionAnswer)
                
            }.padding()
        }
    }
}
    struct HelpAndFAQView_Previews: PreviewProvider {
        static var previews: some View {
            HelpAndFAQView()
        }
    }
