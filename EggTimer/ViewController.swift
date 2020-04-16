//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 8
    let hardTime = 12
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let hardness = sender.currentTitle
        var selectedHardnessTime: Int
        
        switch hardness {
        case "Soft":
            selectedHardnessTime = softTime
        case "Medium":
            selectedHardnessTime = mediumTime
        case "Hard":
            selectedHardnessTime = hardTime
        default:
            selectedHardnessTime = -1
        }
        
        print (selectedHardnessTime)
    }
    

}
