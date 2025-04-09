//
//  ViewController.swift
//  iOS and Swift
//
//  Created by Paulo Afonso Della Mêa dos Santos on 08/04/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstDiceImageView: UIImageView!
    @IBOutlet weak var secondDiceImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        // Dot notation
        // Who             What     value
        firstDiceImageView.image = UIImage(imageLiteralResourceName: "dice\(Int.random(in: 1...6))")
        secondDiceImageView.image = UIImage(imageLiteralResourceName: "dice\(Int.random(in: 1...6))")
    }
}

