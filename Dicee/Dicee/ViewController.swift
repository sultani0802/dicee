//
//  ViewController.swift
//  Dicee
//
//  Created by Haamed Sultani on 2018-08-07.
//  Copyright © 2018 Sultani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Variables
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    let diceImages = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    // MARK: - IBOutlets
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    
    
    // MARK: - View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rollDice()
    }
    
    
    
    // MARK: - IBOutlet Actions
    @IBAction func rollButtonPressed(_ sender: Any) {
        rollDice()
    }
    
    
    
    // MARK: - My Methods
    
    // Roll the dice when user hits ROLL button
    func rollDice() {
        // Roll the dice
        randomDiceIndex1 = Int(arc4random_uniform(6)) // randomly choose an image
        randomDiceIndex2 = Int(arc4random_uniform(6)) // randomly choose an image
        
        /*
         diceImageView1.image = diceImages[randomDiceIndex1]
         diceImageView2.image = diceImages[randomDiceIndex2]
         */
        
        
        // another way to change the images below
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    // Roll the dice when user shakes the phone
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        rollDice()
    }
}
