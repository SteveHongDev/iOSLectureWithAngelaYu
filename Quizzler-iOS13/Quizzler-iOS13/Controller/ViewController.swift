//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var btnOption1: UIButton!
    @IBOutlet weak var btnOption2: UIButton!
    @IBOutlet weak var btnOption3: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! // True, False
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        
        let options = quizBrain.getOptions()
        btnOption1.setTitle(options[0], for: .normal)
        btnOption2.setTitle(options[1], for: .normal)
        btnOption3.setTitle(options[2], for: .normal)
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        btnOption1.backgroundColor = UIColor.clear
        btnOption2.backgroundColor = UIColor.clear
        btnOption3.backgroundColor = UIColor.clear
    }

}
