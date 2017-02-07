//
//  RollViewController.swift
//  DiceIncomplete
//
//  Created by mac on 2017/2/6.
//  Copyright © 2017年 Meow.minithon.teama. All rights reserved.
//

import UIKit

class RollViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Generate Dice Value
    
    /**
    * Randomly generates a Int from 1 to 6
    */

    func randomDiceValue() -> Int {
        let randomValue = 1 + arc4random() % 6
        
        return Int(randomValue)
    }
    
    // MARK: - Actions
    
    @IBAction func rollTheDice(_ sender: Any) {
        performSegue(withIdentifier: "rollDice", sender: self)
//        var controller: DiceViewController
//        controller = self.storyboard?.instantiateViewController(withIdentifier: "DiceViewController") as! DiceViewController
//        
//        controller.firstValue = self.randomDiceValue()
//        controller.secondValue = self.randomDiceValue()
//        
//        self.present(controller, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "rollDice" {
            let controller = segue.destination as! DiceViewController
            
            controller.firstValue = randomDiceValue()
            controller.secondValue = randomDiceValue()
        }
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
