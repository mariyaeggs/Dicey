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
   
   /* Outlets */
   @IBOutlet weak var diceImageView1: UIImageView!
   @IBOutlet weak var diceImageView2: UIImageView!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
      
   }
   
   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }
   
   @IBAction func rollButtonTapped(_ sender: UIButton) {
      
      randomDiceIndex1 = Int(arc4random_uniform(6))
      randomDiceIndex2 = Int(arc4random_uniform(6))
      
      print("isRandom Dice1:", randomDiceIndex1, " isRandom Dice2:", randomDiceIndex2)
   }
   
}

