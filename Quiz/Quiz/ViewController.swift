//
//  ViewController.swift
//  Quiz
//
//  Created by 谭志文 on 2021/3/5.
//

import UIKit

class ViewController: UIViewController {
    
    // 全局变量和常量
    let questions = [
        " 1 + 1 = ?",
        "2 + 2 = ?",
        "3 + 3 = ?"
    ]
    
    let answers = [
        "2",
        "4",
        "6"
    ]
    
    var currentQuestionIntdex = 0
    
    
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIntdex += 1
        if currentQuestionIntdex == questions.count {
            currentQuestionIntdex = 0
        }
        
        let question: String = questions[currentQuestionIntdex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: Any) {
        let answer: String = answers[currentQuestionIntdex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

