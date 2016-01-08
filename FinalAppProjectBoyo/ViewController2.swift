
//
//  ViewController2.swift
//  FinalAppProjectBoyo
//
//  Created by Student on 12/2/15.
//  Copyright © 2015 Dank Meme Incorperated. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    var choice = Choices()
    override func viewDidLoad() {
        super.viewDidLoad()
        if choice.didLook == true
        {
            label.text = "You find a Dank Meme hidden in \n the crack in the wall, \n You turn it over to reveal\n  a key attached"
            image.image = UIImage(named: "key")
            button1.setTitle("Use Key", forState: UIControlState.Normal)
            button2.setTitle("Parrot", forState: UIControlState.Normal)
        }
        else if choice.didClimb == true
        {
            label.text = "You used your arms for one in your\nlife congrats. You look around to\n see the flower standing there,\n mocking you."
            image.image = UIImage(named: "flo")
            button1.setTitle("Punch him", forState: UIControlState.Normal)
            button2.setTitle("Dont Punch Him", forState: UIControlState.Normal)
            
        }
        else if choice.didWalkIn == true
        {
            label.text = "You forgot that this city \n has a major crocodile problem. \n You see one and have a heart attack, \n RIP"
            image.image = UIImage(named: "ded2")
            button1.setTitle("", forState: UIControlState.Normal)
            button2.setTitle("", forState: UIControlState.Normal)
            resetButton.setTitle("Reset", forState: UIControlState.Normal)
            choice.resetChoices()
        }
        else if choice.didFate == true
        {
            label.text = "You sat in the room and died\n within the hour due to your modrate \nto severe meme disorder, Rip"
            button1.setTitle("", forState: UIControlState.Normal)
            button2.setTitle("", forState: UIControlState.Normal)
            image.image = UIImage(named: "ded")
            resetButton.setTitle("Reset", forState: UIControlState.Normal)
            choice.resetChoices()
        }
    }
    @IBAction func
        onButton1Pressed(sender:
        AnyObject) {
            if button1.currentTitle == ("Use Key")
            {
                choice.didKey = true
            }
            if button1.currentTitle == ("Punch him")
            {
                choice.didPunch = true
            }
            performSegueWithIdentifier("to3one", sender: self)
    }
    
    @IBAction func onButton2Pressed(sender: AnyObject) {
        if button2.currentTitle == ("Parrot")
        {
            choice.didEatKey = true
        }
        if button2.currentTitle == ("Dont Punch Him")
        {
            choice.didNotPunch = true
            
        }
        performSegueWithIdentifier("to3two", sender: self)
    }
    @IBAction func resetPress(sender: AnyObject) {
            }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if resetButton.currentTitle == "Reset"
        {
            let dvc = segue.destinationViewController as! ViewController5
            dvc.choice = self.choice
    
        }
            
        else
        {
            let dvc = segue.destinationViewController as! ViewController3
            dvc.choice = self.choice
        }
    }
}