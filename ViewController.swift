//
//  ViewController.swift
//  Magic8Ball
//
//  Created by BSA Univ3 on 17/02/1940 Saka.
//  Copyright © 1940 Crescent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func generateAnswer()
    {
        let maxIndex = UInt32(answers.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        answerTextField.text = answers[randomIndex]
        
        
    }
    
    let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Absolutely!", "Most likely", "Sure, why not?", "Same", "Out to lunch", "Ask again later", "TMI", "Very Doubtful", "Nope", "Absolutely Not"]
    

    

    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var shakeButton: UIButton!
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?)
    
    {
        guard motion == .motionShake else {return}
        generateAnswer()
    
    
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func shakeButtontapped(_ sender: Any) {
        generateAnswer()
    }
        
    
        
        
    }
    


