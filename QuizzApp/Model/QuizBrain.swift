//
//  QuizBrain.swift
//  QuizzApp
//
//  Created by arge-macbook-air on 8.01.2024.
//

import Foundation
import UIKit

struct QuizBrain{
    let questions = [
        Question(text: "Galatasaray 1905 yılında kurulmuştur.", answer: "TRUE", color: .black, image: UIImage(named: "2")!),
        Question(text: "Fenerbahçe 1909 yılında kurulmuştur.", answer: "FALSE", color: .black, image: UIImage(named: "2")!),
        Question(text: "Beşiktaş 1903 yılında kurulmuştur.", answer: "TRUE", color: .black, image: UIImage(named: "2")!),
        Question(text: "Galatasaray Süper Ligi 24 kez kazanmıştır.", answer: "FALSE", color: .black, image: UIImage(named: "2")!)
    ]
    
    var numQuestion = 0
    var score = 0
    
    mutating func checkAnswer(userAnswer:String) -> Bool {
        if userAnswer == questions[numQuestion].text {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getTextQuestions() -> Float {
        
        let progress = Float(numQuestion + 1) / Float(questions.count)
        return progress
    }
    
    func getColor() -> UIColor
    {
        return questions[numQuestion].color
    }
    
    func getImage() -> UIImage {
        return questions[numQuestion].image
    }
    
    mutating func nextQuestions() -> Bool {
        if numQuestion + 1 < questions.count {
            score += 1
            return false
        } else {
            numQuestion = 0
            return true
        }
    }
}
