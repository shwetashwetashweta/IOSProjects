//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //IBOutlet allows me to reference  a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 1
    
    var rightDiceNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //WHO    .      WHAT  = VALUE
//        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceSix")
//
//        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceTwo")
        
        
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        print("Button was pressed")
        diceImageView1.image = [UIImage(imageLiteralResourceName: "DiceOne"),UIImage(imageLiteralResourceName: "DiceTwo"),
         UIImage(imageLiteralResourceName: "DiceThree"),UIImage(imageLiteralResourceName: "DiceFour"),
         UIImage(imageLiteralResourceName: "DiceFive"),UIImage(imageLiteralResourceName: "DiceSix") ][leftDiceNumber]
        
        leftDiceNumber = leftDiceNumber + 1
        
        diceImageView2.image = [UIImage(imageLiteralResourceName: "DiceOne"),UIImage(imageLiteralResourceName: "DiceTwo"),
         UIImage(imageLiteralResourceName: "DiceThree"),UIImage(imageLiteralResourceName: "DiceFour"),
         UIImage(imageLiteralResourceName: "DiceFive"),UIImage(imageLiteralResourceName: "DiceSix") ][rightDiceNumber]
        
        rightDiceNumber = rightDiceNumber - 1
    }
    


}

