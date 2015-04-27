//
//  ViewController.swift
//  99RedBalloons
//
//  Created by Morgan Le Gal on 4/26/15.
//  Copyright (c) 2015 Morgan Le Gal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var balloonImageView: UIImageView!
    
    @IBOutlet weak var balloonLabel: UILabel!
    
    
    var myBalloons:[Balloon] = []
    var counterButtonPressed = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var balloon = Balloon()
        
        // Create the array of random balloon instances
        for var index = 0; index < 100; index++
        {
            balloon.number = index
            balloon.image = UIImage(named: balloon.ballonImageFromRandomNumber())
            myBalloons.append(balloon)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBalloonButtonPressed(sender: UIBarButtonItem) {
        self.balloonLabel.text = "\(myBalloons[counterButtonPressed].number)" + " balloons"
        self.balloonImageView.image = myBalloons[counterButtonPressed].image
        counterButtonPressed++
    }

}

