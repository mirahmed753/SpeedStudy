//
//  QuestionsAndAnswers.swift
//  Speed Study
//
//  Created by Johnny Chiu on 7/13/17.
//  Copyright © 2017 MiniProject. All rights reserved.
//

import Foundation

class QNA2 {
    // create variables
    var question: String
    var rightAns: String
    var choice2: String
    var choice3: String
    var choice4: String
    
    // create constructor 
    init(question: String, rightAns: String, choice2: String, choice3: String, choice4: String)
    {
        self.question = question
        self.rightAns = rightAns
        self.choice2 = choice2
        self.choice3 = choice3
        self.choice4 = choice4
    }
}

class QNA {
    
    static var mathQuestions: [String] = [String]()
    static var mathAnswers: [String] = [String]()
    
    // create Math QnA
    
    class func createMathQuestions() {
        mathQuestions.append("What is the derivative of sin(x) ?")
        mathQuestions.append("What is the derivative of cos(x) ?")
        mathQuestions.append("What is the derivative of tan(x) ?")
        mathQuestions.append("What is the derivative of csc(x) ?")
        mathQuestions.append("What is the derivative of sec(x) ?")
        mathQuestions.append("What is the derivative of cot(x) ?")
        mathQuestions.append("What is the derivative of x^2 ?")
        mathQuestions.append("What is the derivative of 4x^3 + 7x^2 ?")
    }
    
    class func getMathAnswers() {
        mathAnswers.append("cos(x)")
        mathAnswers.append("-sin(x)")
        mathAnswers.append("sec^2(x)")
        mathAnswers.append("-csc(x) * cot(x)")
        mathAnswers.append("sec(x) * tan(x)")
        mathAnswers.append("-csc^2(x)")
        mathAnswers.append("2x")
        mathAnswers.append("12x^2 + 14x")
    }
    
    // create History QnA
    
    // create Comp Sci QnA
    
    // create Geography QnA
    
    
    // static var q = QuestionsAndAnswer()
}
