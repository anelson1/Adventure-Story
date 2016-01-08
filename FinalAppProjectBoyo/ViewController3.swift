//
//  ViewController3.swift
//  FinalAppProjectBoyo
//
//  Created by Student on 12/2/15.
//  Copyright © 2015 Dank Meme Incorperated. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var reset: UIButton!
    
    var choice = Choices()
    override func viewDidLoad() {
        super.viewDidLoad()
        if choice.didKey == true
        {
            label.text = "You used the key, \n good for you. you are \n now out of the dungeon."
            image.image = UIImage(named: "dankmeem")
            button1.setTitle("Walk Out", forState: UIControlState.Normal)
            button2.setTitle("Die", forState: UIControlState.Normal)
            
            
        }
        else if choice.didPunch == true {
            label2.text = "He Died On The \n Spot. You Win"
            button1.setTitle("", forState: UIControlState.Normal)
            reset.setTitle("Win", forState: UIControlState.Normal)
            button2.setTitle("", forState: UIControlState.Normal)
            image.image = UIImage(named: "win")
           

        }

        else if choice.didEatKey == true
        {
            label2.text = "Why did you do that?"
            button1.setTitle("", forState: UIControlState.Normal)
             reset.setTitle("Reset", forState: UIControlState.Normal)
            button2.setTitle("", forState: UIControlState.Normal)
            image.image = UIImage(named: "parrtor")
            

                    }
        else if choice.didNotPunch == true
        {
            label2.text = "Why.... He was a flower \n you lost your turn and the flower \n used contemplate life choices \n you died. RIP"
            button1.setTitle("", forState: UIControlState.Normal)
            reset.setTitle("Reset", forState: UIControlState.Normal)
            button2.setTitle("", forState: UIControlState.Normal)
            image.image = UIImage(named: "sqad")
           


        }
       

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onButton1(sender: AnyObject) {
        if button1.currentTitle == ("Walk Out"){
            choice.didWalkOut = true
        }
    
    }
    
    @IBOutlet weak var onButton2: UIButton!
    @IBAction func onButton2(sender: AnyObject) {
        if button2.currentTitle == ("Die"){
            choice.didDie = true
        }
        
        
        
    }
   
    @IBAction func resetPressed(sender: AnyObject) {
        
        func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            let dvc = segue.destinationViewController as! ViewController
            dvc.choice = self.choice
                        
        }

    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if reset.currentTitle == "Reset" {
            let dvc = segue.destinationViewController as! ViewController5
            dvc.choice = self.choice
        }
        else if reset.currentTitle == "Win" {
            let dvc = segue.destinationViewController as! ViewController5
            dvc.choice = self.choice
        }
        else
        {
            let dvc = segue.destinationViewController as! ViewController4
            dvc.choice = self.choice
            
        }

        
        
    }

    
}
