//
//  CalculusViewController.swift
//  Speed Study
//
//  Created by Johnny Chiu on 7/10/17.
//  Copyright © 2017 MiniProject. All rights reserved.
//
import UIKit
import Foundation

class QuestionViewController: UIViewController{
    @IBOutlet weak var errorMessage: UILabel!
    var answerList = [String]()
    var question: Question!
    var verify: String = " "
    var randInt: Int = 0
    var randChoose: Int = 0
    var randAnswer1 = 0
    var randAnswer2 = 0
    var randAnswer3 = 0
    
    @IBOutlet var buttonSet: [UIButton]!
    
    @IBAction func buttonSetTapped(sender: UIButton)
    {
        let index = buttonSet.index(of: sender)!
        if randInt == index
        {
            //Score.score += 1
            QNA.mathQuestions.removeAll()
            QNA.mathAnswers.removeAll()
            loadQuestion()
        }
        else{
            
        }
    }
    
    @IBOutlet weak var questionNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // make buttons circular
        for button in buttonSet {
            button.layer.cornerRadius = 15
        }
        
        loadQuestion()
        
    }
    func loadQuestion(){
        randInt = Int(arc4random_uniform(UInt32(3)))
        randChoose = Int(arc4random_uniform(UInt32(7)))
        question = QuestionGenerator.generatorQuestion(num: randChoose)
        questionNumber.text = question.text //question.text
        
        randInt = Int(arc4random_uniform(UInt32(3)))
        switch randInt{
        case 0:
            buttonSet[0].setTitle(question.answer, for: .normal)
            QNA.mathQuestions.remove(at: randChoose)
            QNA.mathAnswers.remove(at: randChoose)
            
            randAnswer1 = Int(arc4random_uniform(UInt32(QNA.mathAnswers.count-1)))
            buttonSet[1].setTitle(QNA.mathAnswers[randAnswer1],for: .normal)
            QNA.mathAnswers.remove(at: randAnswer1)
            
            randAnswer2 = Int(arc4random_uniform(UInt32(QNA.mathAnswers.count-1)))
            buttonSet[2].setTitle(QNA.mathAnswers[randAnswer2],for: .normal)
            QNA.mathAnswers.remove(at: randAnswer2)
            
            randAnswer3 = Int(arc4random_uniform(UInt32(QNA.mathAnswers.count-1)))
            buttonSet[3].setTitle(QNA.mathAnswers[randAnswer3],for: .normal)
            QNA.mathAnswers.remove(at: randAnswer3)
            
        case 1:
            buttonSet[1].setTitle(question.answer, for: .normal)
            QNA.mathQuestions.remove(at: randChoose)
            QNA.mathAnswers.remove(at: randChoose)
            
            randAnswer1 = Int(arc4random_uniform(UInt32(QNA.mathAnswers.count-1)))
            buttonSet[0].setTitle(QNA.mathAnswers[randAnswer1],for: .normal)
            QNA.mathAnswers.remove(at: randAnswer1)
            
            randAnswer2 = Int(arc4random_uniform(UInt32(QNA.mathAnswers.count-1)))
            buttonSet[2].setTitle(QNA.mathAnswers[randAnswer2],for: .normal)
            QNA.mathAnswers.remove(at: randAnswer2)
            
            randAnswer3 = Int(arc4random_uniform(UInt32(QNA.mathAnswers.count-1)))
            buttonSet[3].setTitle(QNA.mathAnswers[randAnswer3],for: .normal)
            QNA.mathAnswers.remove(at: randAnswer3)
        case 2:
            buttonSet[2].setTitle(question.answer, for: .normal)
            QNA.mathQuestions.remove(at: randChoose)
            QNA.mathAnswers.remove(at: randChoose)
            
            randAnswer1 = Int(arc4random_uniform(UInt32(QNA.mathAnswers.count-1)))
            buttonSet[0].setTitle(QNA.mathAnswers[randAnswer1],for: .normal)
            QNA.mathAnswers.remove(at: randAnswer1)
            
            randAnswer2 = Int(arc4random_uniform(UInt32(QNA.mathAnswers.count-1)))
            buttonSet[1].setTitle(QNA.mathAnswers[randAnswer2],for: .normal)
            QNA.mathAnswers.remove(at: randAnswer2)
            
            randAnswer3 = Int(arc4random_uniform(UInt32(QNA.mathAnswers.count-1)))
            buttonSet[3].setTitle(QNA.mathAnswers[randAnswer3],for: .normal)
            QNA.mathAnswers.remove(at: randAnswer3)
            
        case 3:
            buttonSet[3].setTitle(question.answer, for: .normal)
            QNA.mathQuestions.remove(at: randChoose)
            QNA.mathAnswers.remove(at: randChoose)
            
            
            randAnswer1 = Int(arc4random_uniform(UInt32(QNA.mathAnswers.count-1)))
            buttonSet[0].setTitle(QNA.mathAnswers[randAnswer1],for: .normal)
            QNA.mathAnswers.remove(at: randAnswer1)
            
            randAnswer2 = Int(arc4random_uniform(UInt32(QNA.mathAnswers.count-1)))
            buttonSet[1].setTitle(QNA.mathAnswers[randAnswer2],for: .normal)
            QNA.mathAnswers.remove(at: randAnswer2)
            
            randAnswer3 = Int(arc4random_uniform(UInt32(QNA.mathAnswers.count-1)))
            buttonSet[2].setTitle(QNA.mathAnswers[randAnswer3],for: .normal)
            QNA.mathAnswers.remove(at: randAnswer3)
        default:
            fatalError("index out of bounds")
        }
        
//        randInt = Int(arc4random_uniform(UInt32(question.questionNum)))
//        buttonSet[0].setTitle(QNA.mathAnswers[randInt], for: .normal)
//        
//        randInt = Int(arc4random_uniform(UInt32(question.questionNum)))
//        buttonSet[1].setTitle(QNA.mathAnswers[randInt], for: .normal)
//        
//        buttonSet[2].setTitle(question.answer, for: .normal)
//        
//        buttonSet[3].setTitle(QNA.mathAnswers[Int(arc4random_uniform(UInt32(question.questionNum)))], for: .normal)
    }
}
