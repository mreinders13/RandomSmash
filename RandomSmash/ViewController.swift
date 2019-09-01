//
//  ViewController.swift
//  RandomSmash
//
//  Created by Michael Reinders on 8/31/19.
//  Copyright © 2019 Michael Reinders. All rights reserved.
//

import UIKit
import GameKit

var lastNumber:Int = 13

class ViewController: UIViewController {

    @IBOutlet weak var imgRandom: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgRandom.image = UIImage(named: "questionMark")
        
    }

    func randomCharacter() {
        // Generate the random number
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: 12)
        
        if lastNumber != randomNumber {
            // Assign Photo to random number
            switch randomNumber {
            case 0: imgRandom.image = UIImage(named: "Luigi")
            case 1: imgRandom.image = UIImage(named: "Mario")
            case 2: imgRandom.image = UIImage(named: "DK")
            case 3: imgRandom.image = UIImage(named: "Link")
            case 4: imgRandom.image = UIImage(named: "Samus")
            case 5: imgRandom.image = UIImage(named: "CapitanFalcon")
            case 6: imgRandom.image = UIImage(named: "Nes")
            case 7: imgRandom.image = UIImage(named: "Yoshi")
            case 8: imgRandom.image = UIImage(named: "Kirby")
            case 9: imgRandom.image = UIImage(named: "Fox")
            case 10: imgRandom.image = UIImage(named: "Pikachu")
            case 11: imgRandom.image = UIImage(named: "Jigglypuff")
            default: imgRandom.image = UIImage(named: "questionMark")
            }
        } else {
            self.randomCharacter()
        }
        // Assign the latest generated random number to the lastNumber variable
        lastNumber = randomNumber
    }
    
    @IBAction func btnRandom(_ sender: Any) {
        randomCharacter()
        
    }
    
}

