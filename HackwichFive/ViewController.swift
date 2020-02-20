//
//  ViewController.swift
//  HackwichFive
//
//  Created by kat on 2/20/20.
//  Copyright © 2020 kat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var buttonLabel: UIButton!
    
    var currentIndex = 0
    var favoritefoodArray = ["Fries","Tacos","Spanish Rice","Bread","Donuts"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.topLabel.text="My Favorite Food"
        
        // Do any additional setup after loading the view.
    }

    //created an IBAction to execute a series of tasks (line of code) upon button press
    @IBAction func buttonPressed(_ sender: Any)
    {
        
        //created a "current Index" in order to see the text when button is pressed
        self.bottomLabel.text = favoritefoodArray[currentIndex]
        
        //if and else statement is when a "label or button" is present and when button is pressed it changes to the next current change, start with 0 - when list is done
        if self.currentIndex < self.favoritefoodArray.count
        {
            //"current Index" is there in order to access the list and the next item
            currentIndex+=1
            //changed the button that's named "Next" to be present
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
            
        }
        else
        {
        //will lock the button when all items are accessed
            (sender as! UIButton).isEnabled = false
        
         }
    
}
}
