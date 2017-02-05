//
//  ViewController.swift
//  ItDoesn'tMatter
//
//  Created by Whitney Lauren on 2/4/17.
//  Copyright © 2017 Whitney Lauren. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var choiceOne: UITextField!
    @IBOutlet weak var choiceTwo: UITextField!
    @IBOutlet weak var choiceThree: UITextField!
    @IBOutlet weak var choiceFour: UITextField!
    @IBOutlet weak var choiceFive: UITextField!
    @IBOutlet weak var choiceSix: UITextField!
    @IBOutlet weak var choiceSeven: UITextField!
    @IBOutlet weak var choiceEight: UITextField!
    @IBOutlet weak var choiceNine: UITextField!
    @IBOutlet weak var choiceTen: UITextField!
    @IBOutlet weak var chooseOutlet: UIButton!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        choiceOne.delegate = self
        choiceTwo.delegate = self
        choiceThree.delegate = self
        choiceFour.delegate = self
        choiceFive.delegate = self
        choiceSix.delegate = self
        choiceSeven.delegate = self
        choiceEight.delegate = self
        choiceNine.delegate = self
        choiceTen.delegate = self
       
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        choiceOne.resignFirstResponder()
        choiceTwo.resignFirstResponder()
        choiceThree.resignFirstResponder()
        choiceFour.resignFirstResponder()
        choiceFive.resignFirstResponder()
        choiceSix.resignFirstResponder()
        choiceSeven.resignFirstResponder()
        choiceEight.resignFirstResponder()
        choiceNine.resignFirstResponder()
        choiceTen.resignFirstResponder()
        
        return true
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func tryAgain(_ sender: UIButton) {
        
        //TRY AGAIN BUTTON RESETS THE RESULTS AND THE CHOICES SO USER CAN TRY AGAIN.
        
        resultLabel.text = ""
        choiceOne.text = ""
        choiceTwo.text = ""
        choiceThree.text = ""
        choiceFour.text = ""
        choiceFive.text = ""
        choiceSix.text = ""
        choiceSeven.text = ""
        choiceEight.text = ""
        choiceNine.text = ""
        choiceTen.text = ""
        
    }
    
    @IBAction func chooseButton(_ sender: UIButton) {
        
        //SAVES TEXTFIELD RESPONSES FOR RANDOMIZATION.
        _ = UserDefaults.standard
        UserDefaults.standard.set(choiceOne.text, forKey: "choiceOne")
        UserDefaults.standard.set(choiceTwo.text, forKey: "choiceTwo")
        UserDefaults.standard.set(choiceThree.text, forKey: "choiceThree")
        UserDefaults.standard.set(choiceFour.text, forKey: "choiceFour")
        UserDefaults.standard.set(choiceFive.text, forKey: "choiceFive")
        UserDefaults.standard.set(choiceSix.text, forKey: "choiceSix")
        UserDefaults.standard.set(choiceSeven.text, forKey: "choiceSeven")
        UserDefaults.standard.set(choiceEight.text, forKey: "choiceEight")
        UserDefaults.standard.set(choiceNine.text, forKey: "choiceNine")
        UserDefaults.standard.set(choiceTen.text, forKey: "choiceTen")
        UserDefaults.standard.synchronize()
        
       let choiceArray = [choiceOne, choiceTwo, choiceThree, choiceFour, choiceFive, choiceSix, choiceSeven, choiceEight, choiceNine, choiceTen]

        let randomIndex = Int(arc4random_uniform(UInt32(choiceArray.count)))
        
        resultLabel.text = choiceArray[randomIndex]?.text
 
        
   
    }
    


}

