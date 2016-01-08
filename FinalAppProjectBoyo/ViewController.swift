//
//  ViewController.swift
//  FinalAppProjectBoyo
//
//  Created by Student on 12/2/15.
//  Copyright © 2015 Dank Meme Incorperated. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var choice = Choices()
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "When walking down the street, \n you come across the once thought \n extinct flower of legend "
        
        
    }
    
    @IBAction func onFightPressed(sender: AnyObject) { //on button tapped, set a choice to true
        choice.didFight = true
        choice.name = textField.text!
    }
    @IBAction func onScreenTapped(sender: AnyObject) { //resign the keybord 
        textField.resignFirstResponder()
    }
    
    
    @IBAction func onFleePressed(sender: AnyObject) {
        choice.didFlee = true
        choice.name = textField.text!
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! ViewController1
        dvc.choice = self.choice
        
    }
    
}