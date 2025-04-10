//
//  ViewController.swift
//  iOS and Swift
//
//  Created by Paulo Afonso Della Mêa dos Santos on 08/04/25.
//

import UIKit

class ViewController: UIViewController {
    
    // Connection of images in main
    @IBOutlet weak var firstDiceImageView: UIImageView!
    @IBOutlet weak var secondDiceImageView: UIImageView!
    
    // Connection of roll button in main
    @IBAction func onPressed(_ sender: UIButton) {
        let  diceArray = [UIImage(imageLiteralResourceName: "dice1"),
                         UIImage(imageLiteralResourceName: "dice2"),
                         UIImage(imageLiteralResourceName: "dice3"),
                         UIImage(imageLiteralResourceName: "dice4"),
                         UIImage(imageLiteralResourceName: "dice5"),
                         UIImage(imageLiteralResourceName: "dice6"),]
        
        // Dot notation
        // Who              What    value
        firstDiceImageView.image = diceArray.randomElement()
        secondDiceImageView.image = diceArray.randomElement()
    }
}

