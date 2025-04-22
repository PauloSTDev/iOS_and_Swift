//
//  ViewController.swift
//  iOS and Swift
//
//  Created by Paulo Afonso Della Mêa dos Santos on 08/04/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        timer.invalidate()
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness
        
        
       timer =  Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsPassed <= totalTime {
            let porcentageProgress = Float(secondsPassed) / Float(totalTime)
            print("\(porcentageProgress) seconds.")
            progressBar.progress = porcentageProgress
            secondsPassed += 1
        }
        else {
            timer.invalidate()
            titleLabel.text = "Done!"
        }
        
    }
    
}

