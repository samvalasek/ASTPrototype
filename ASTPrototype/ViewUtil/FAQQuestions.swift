//
//  FAQQuestions.swift
//  ASTPrototype
//
//  Created by Sam Valasek on 19/06/2023.
//

import Foundation

struct FAQQuestions: Hashable, Identifiable {
    let id = UUID()
    
    let questionTitle: String
    let questionAnswer: String
    
    static let questions = [
    FAQQuestions(questionTitle: "What is AST?",
                 questionAnswer: "Ashfield Study Tracker is an application which allows you to track your independant studying at Ashfield Post 16 Centre. Simply login with your QR code to begin."),
    FAQQuestions(questionTitle: "Where do I find my QR code",
                 questionAnswer: "Your personal QR code can be found on the back of your lanyard or alternatively you can use the manual text input code underneath to login to the system. If you do not have either, please see Mrs Draper or contact her."),
    FAQQuestions(questionTitle: "Who created AST?",
                 questionAnswer: "Ashfield Study Tracker was created by Samuel Valasek (2023).")]
}
