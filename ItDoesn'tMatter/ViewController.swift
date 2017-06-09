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
    @IBOutlet weak var chooseOutlet: UIButton!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        choiceOne.delegate = self
        choiceTwo.delegate = self
        choiceThree.delegate = self
        choiceFour.delegate = self
        choiceFive.delegate = self

       
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        choiceOne.resignFirstResponder()
        choiceTwo.resignFirstResponder()
        choiceThree.resignFirstResponder()
        choiceFour.resignFirstResponder()
        choiceFive.resignFirstResponder()

        
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

        
    }
    
    @IBAction func chooseButton(_ sender: UIButton) {
        
        //SAVES TEXTFIELD RESPONSES FOR RANDOMIZATION.
        _ = UserDefaults.standard
        UserDefaults.standard.set(choiceOne.text, forKey: "choiceOne")
        UserDefaults.standard.set(choiceTwo.text, forKey: "choiceTwo")
        UserDefaults.standard.set(choiceThree.text, forKey: "choiceThree")
        UserDefaults.standard.set(choiceFour.text, forKey: "choiceFour")
        UserDefaults.standard.set(choiceFive.text, forKey: "choiceFive")

        UserDefaults.standard.synchronize()
        
       let choiceArray = [choiceOne, choiceTwo, choiceThree, choiceFour, choiceFive]

        let randomIndex = Int(arc4random_uniform(UInt32(choiceArray.count)))
        
        resultLabel.text = choiceArray[randomIndex]?.text
 
        
   
    }
    


}

