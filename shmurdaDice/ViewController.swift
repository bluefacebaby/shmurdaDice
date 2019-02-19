//
//  ViewController.swift
//  shmurdaDice
//
//  Created by Uwaifiokun Idugboe on 2019-02-07.
//  Copyright © 2019 Uwa Idugboe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6" ]
    @IBOutlet weak var diceimageview1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImage()
    }


    @IBAction func rollButtonPress(_ sender: UIButton) {
        updateDiceImage()
        
    }

    // This function generates 2 random numbers for the dice.
    func updateDiceImage(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        print(randomDiceIndex1)
        
        diceimageview1.image = UIImage(named:diceArray[randomDiceIndex1] )
        diceImageView2.image = UIImage(named:diceArray[randomDiceIndex2] )
   
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
}


