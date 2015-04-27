//
//  Balloon.swift
//  99RedBalloons
//
//  Created by Morgan Le Gal on 4/26/15.
//  Copyright (c) 2015 Morgan Le Gal. All rights reserved.
//

import Foundation
import UIKit

struct Balloon {
    var number = 0
    var image = UIImage(named:"")
    
    func ballonImageFromRandomNumber() -> String {
        let randomInt = Int(arc4random_uniform(UInt32(4)))
        
        var imageName:String
        
        switch(randomInt)
        {
            case 0: imageName = "RedBalloon1.jpg"
            break
            case 1: imageName = "RedBalloon2.jpg"
            break
            case 2: imageName = "RedBalloon3.jpg"
            break
            default: imageName = "RedBalloon4.jpg"
            break
        }
        return imageName
    }
}