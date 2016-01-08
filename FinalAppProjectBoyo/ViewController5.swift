//
//  ViewController5.swift
//  FinalAppProjectBoyo
//
//  Created by Student on 12/2/15.
//  Copyright © 2015 Dank Meme Incorperated. All rights reserved.
//

import UIKit

class ViewController5: UIViewController {
    @IBOutlet weak var choice1: UILabel!
    @IBOutlet weak var choice2: UILabel!
    @IBOutlet weak var choice3: UILabel!
    @IBOutlet weak var choice4: UILabel!
    @IBOutlet weak var choice5: UILabel!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var choice6: UILabel!
    var choice = Choices()
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = " The Life Of \(choice.name)"
        if choice.didFight == true
        {
            choice1.text = "Fought The Flower"
        }
        else if choice.didFlee == true
        {
            choice1.text = "Ran From The Flower"
        }
        if choice.didLook == true
        {
            choice2.text = "Looked Around"
        }
        else if choice.didFate == true
        {
            choice2.text = "You Died Of Meme Disorder"
        }
        if choice.didClimb == true
        {
            choice2.text = "Climbed Out"
        }
        else if choice.didWalkIn == true
        {
            choice2.text = "Walked In"
        }
        if choice.didKey == true
        {
            choice3.text = "Found a Key"
        }
        else if choice.didEatKey == true
        {
            choice3.text = "Tought Comminisim To A Parrot"
        }
        if choice.didPunch == true
        {
            choice3.text = "Punched The Flower"
        }
        else if choice.didNotPunch == true
        {
            choice3.text = "Did Not Punch The Flower"
        }
        else if choice.didDie == true
        {
            choice4.text = "Died"
        }
        else if choice.didWalkOut == true
        {
            choice4.text = "Walked Out"
        }
    }
    
    @IBAction func onResetTapped(sender: AnyObject) {
        choice.resetChoices()
    }
    
}
