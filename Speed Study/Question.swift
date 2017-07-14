//
//  Questions.swift
//  Speed Study
//
//  Created by Johnny Chiu on 7/11/17.
//  Copyright © 2017 MiniProject. All rights reserved.
//
import UIKit
import Foundation

class Question{
    
    var questionNum: Int
    var text: String
    var answer: String
    
    init(questionNum: Int, text: String, answer: String) {
        self.questionNum = questionNum
        self.text = text
        self.answer = answer 
    }
}
