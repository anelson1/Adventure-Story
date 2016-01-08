//
//  ViewController1.swift
//  FinalAppProjectBoyo
//
//  Created by Student on 12/2/15.
//  Copyright © 2015 Dank Meme Incorperated. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {
    var choice = Choices()
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if choice.didFight //change text based upon what choice was picked
        {
            textLabel.text = "It was just a flower, so you \n Pulled it out of the ground and \n burned it.  In its last moments, it \nsent you to its dungeon"
            image.image = UIImage(named: "dungeon")
            button1.setTitle("Look around", forState: UIControlState.Normal)
            button2.setTitle("Accept Fate", forState: UIControlState.Normal)
        }
            
        else
        {
            textLabel.text = "Way to go, you just ran, you wuss\n Due to the distraction \n of the nagging,\n you fall into a sewer"
            
            button1.setTitle("Climb Out", forState: UIControlState.Normal)
            button2.setTitle("Walk In", forState: UIControlState.Normal)
            
            
        }
        
    }
    
    @IBAction func buttonPressed1(sender: AnyObject) {
        if button1.currentTitle == ("Look around") //Checks for current button title
        {
            choice.didLook = true //Changes boolean value
            
        }
        else if button1.currentTitle == ("Climb Out"){
            choice.didClimb = true
        }
        
    }
    
    @IBAction func buttonPressed2(sender: AnyObject) {
        
        if button2.currentTitle == ("Accept Fate"){
            choice.didFate = true
        }
            
        else if button2.currentTitle == ("Walk In"){
            choice.didWalkIn = true
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) { //Transfer data 
        let dvc = segue.destinationViewController as! ViewController2
        dvc.choice = self.choice
        
    }
    
}
