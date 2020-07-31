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
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let questions = [
        ["4 + 2 = 6"],
        ["5 - 3 é maior que 1"],
        ["3 + 8 é menor que 10"]
    ]
    
    var currentQuestion = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUi()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        currentQuestion += 1
        updateUi()
    }
    
    func updateUi(){
        questionLabel.text = questions[currentQuestion]
    }
}

