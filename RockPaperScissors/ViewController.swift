//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by  on 11/7/19.
//  Copyright © 2019 BrendansReallyCoolThings. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myImageView2: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myLabelScore: UILabel!

    @IBOutlet weak var myLabelScore1: UILabel!
    var myScore = 0
    var notMyScore = 0

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func setColor()
    {
        if myScore > notMyScore
        {
            myLabelScore.textColor = UIColor.green
            myLabelScore1.textColor = UIColor.red
        }
        if myScore < notMyScore
        {
           myLabelScore.textColor = UIColor.red
            myLabelScore1.textColor = UIColor.green
        }
        if myScore == notMyScore
        {
            myLabelScore.textColor = UIColor.black
            myLabelScore1.textColor = UIColor.black
        }
    }
    
    func setScore()
    {
        if myLabel.text == "You Win"
        {
           myScore = myScore+1
            myLabelScore.text = "\(myScore)"
        }
        if myLabel.text == "You Lose"
        {
           notMyScore = notMyScore+1
            myLabelScore1.text = "\(notMyScore)"
        }
    }
    
    func winner() -> String
    {
        var winner = ""
        if myImageView.image == UIImage(named: "rock") && myImageView2.image == UIImage(named: "rock")
            {
                winner = "Tie"
            }
        if myImageView.image == UIImage(named: "rock") && myImageView2.image == UIImage(named: "scissors")
            {
                winner = "You Win"
            }
        if myImageView.image == UIImage(named: "rock") && myImageView2.image == UIImage(named: "paper")
            {
                winner = "You Lose"
            }
        if myImageView.image == UIImage(named: "paper") && myImageView2.image == UIImage(named: "rock")
            {
                winner = "You Win"
            }
        if myImageView.image == UIImage(named: "paper") && myImageView2.image == UIImage(named: "paper")
            {
                winner = "Tie"
            }
        if myImageView.image == UIImage(named: "paper") && myImageView2.image == UIImage(named: "scissors")
            {
                winner = "You Lose"
            }
        if myImageView.image == UIImage(named: "scissors") && myImageView2.image == UIImage(named: "rock")
            {
                winner = "You Lose"
            }
        if myImageView.image == UIImage(named: "scissors") && myImageView2.image == UIImage(named: "paper")
            {
                winner = "You Win"
            }
        if myImageView.image == UIImage(named: "scissors") && myImageView2.image == UIImage(named: "scissors")
            {
                winner = "Tie"
            }

        return winner
    }
    
    func randomNumber() -> Int
    {
        let randomInt = Int.random(in: 1...3)
        return randomInt
        
    }
    
    func setPic() -> String
    {
        var x = randomNumber()
        var y = ""
        if x == 1
        {
            y = "rock"
        }
        if x == 2
        {
            y = "paper"
        }
        if x == 3
        {
            y = "scissors"
        }
        
        
        return y
    }
    
    
    @IBAction func myButtonClear(_ sender: Any)
    {
       myLabelScore.text = "\(0)"
        myLabelScore1.text = "\(0)"
        myScore = 0
        notMyScore = 0
        myLabel.text = "Winner"
        myLabelScore.textColor = UIColor.black
        myLabelScore1.textColor = UIColor.black
    }
    
    @IBAction func rockTap(_ sender: Any)
    {
        myImageView.image = UIImage(named: "rock")
        var picture = setPic()
        myImageView2.image = UIImage(named: picture)
        myLabel.text = winner()
        setScore()
        setColor()
    }
    
    @IBAction func paperTap(_ sender: Any)
    {
        myImageView.image = UIImage(named: "paper")
        var picture = setPic()
        myImageView2.image = UIImage(named: picture)
        myLabel.text = winner()
        setScore()
        setColor()
    }
    
    @IBAction func scissorsTap(_ sender: Any)
    {
        myImageView.image = UIImage(named: "scissors")
        var picture = setPic()
        myImageView2.image = UIImage(named: picture)
        myLabel.text = winner()
        setScore()
        setColor()
        
    }
    
}

