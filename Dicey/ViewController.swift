//
//  ViewController.swift
//  Dicey
//
//  Created by Mariya Eggensperger  on 1/29/18.
//  Copyright © 2018 Mariya Eggensperger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
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
   }
   
}

