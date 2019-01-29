//
//  ViewController.swift
//  Quiz
//
//  Created by Kyle Fetcho on 1/23/19.
//  Copyright © 2019 Kyle Fetcho. All rights reserved.
//  High Point University

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?",
        "When was High Point University founded?",
        "Who is the current president of HPU?",
        "What are High Points school colors?",
        "What NFL team does Robert Kraft own?",
        "Where is Super Bowl LIII going to be held?"
    ]
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes",
        "1924",
        "Dr. Nido Qubein",
        "Purple and white",
        "The New England Patriots",
        "Mercedes-Benz Stadium in Atlanta, GA"
        
    ]

    var currentQuestionIndex: Int = 0
    
    
    @IBAction func showNextQuestion(_ sender: UIButton){
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton){
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    
}

