//
//  ViewController.swift
//  iOS and Swift
//
//  Created by Paulo Afonso Della Mêa dos Santos on 08/04/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tittleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    
    var secondsRemaining = 60
    
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        
        timer.invalidate()
        
        secondsRemaining = eggTimes[hardness]!
        
       timer =  Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsRemaining > 0 {
            print("\(secondsRemaining) seconds.")
            secondsRemaining -= 1
            
        }
        else {
            timer.invalidate()
            tittleLabel.text = "Done!"
        }
        
    }
    
}

