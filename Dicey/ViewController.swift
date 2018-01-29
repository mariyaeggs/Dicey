//
//  ViewController.swift
//  Dicey
//
//  Created by Mariya Eggensperger  on 1/29/18.
//  Copyright © 2018 Mariya Eggensperger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
   /* Variables */
   var randomDiceIndex1 : Int = 0
   var randomDiceIndex2 : Int = 0
   
   let dieArray = ["dice1","dice2", "dice3", "dice4", "dice5", "dice6"]
   /* Outlets */
   @IBOutlet weak var diceImageView1: UIImageView!
   @IBOutlet weak var diceImageView2: UIImageView!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      updateDieImages()
   }
   
   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }
   
   @IBAction func rollButtonTapped(_ sender: UIButton) {
      
      updateDieImages()
      
   }
   func updateDieImages() {
      randomDiceIndex1 = Int(arc4random_uniform(6))
      randomDiceIndex2 = Int(arc4random_uniform(6))
      
      print("isRandom Dice1:", randomDiceIndex1, " isRandom Dice2:", randomDiceIndex2)
      
      diceImageView1.image = UIImage(named: dieArray[randomDiceIndex1])
      diceImageView2.image = UIImage(named: dieArray[randomDiceIndex2])
   }
   override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
      let isMotionEnded : Bool = true
      if isMotionEnded {
         updateDieImages()
         print("isMotionEnded.")
      }
   }
}

