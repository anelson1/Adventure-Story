//
//  ViewController4.swift
//  FinalAppProjectBoyo
//
//  Created by Student on 12/2/15.
//  Copyright © 2015 Dank Meme Incorperated. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {
var choice = Choices()
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var reset: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if choice.didWalkOut == true
        {
            label.text = "Yay, You walked out. \nCongrats Kiddo."
            image.image = UIImage(named: "win")
            button1.setTitle("", forState: UIControlState.Normal)
            button2.setTitle("", forState: UIControlState.Normal)
            reset.setTitle("Win", forState: UIControlState.Normal)
            

            
        }
        else if choice.didDie == true {
            label.text = "You Died Kid"
            button1.setTitle("", forState: UIControlState.Normal)
                        button2.setTitle("", forState: UIControlState.Normal)
            reset.setTitle("Reset", forState: UIControlState.Normal)
            image.image = UIImage(named: "skelenoot")
            
        }


        // Do any additional setup after loading the view.
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
        else{
            let dvc = segue.destinationViewController as! ViewController5
            dvc.choice = self.choice
            
        }
        
        
        
    }

    

}
