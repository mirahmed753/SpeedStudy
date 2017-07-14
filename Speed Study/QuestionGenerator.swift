//
//  QuestionGenerator.swift
//  Speed Study
//
//  Created by Johnny Chiu on 7/11/17.
//  Copyright © 2017 MiniProject. All rights reserved.
//

import Foundation
class QuestionGenerator{

    class func generatorQuestion(num: Int) -> Question
    {
        QNA.createMathQuestions()
        QNA.getMathAnswers()
        let questionGot = QNA.mathQuestions[num]
        let answerGot = QNA.mathAnswers[num]
        //num += 1
        return Question(questionNum: num, text: questionGot, answer: answerGot)
    }
    class func generatorAnswer(num: Int) -> String{
        return QNA.mathAnswers[num]
    }
}
