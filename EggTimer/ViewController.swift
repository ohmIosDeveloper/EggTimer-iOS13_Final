//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let timesDictionary = ["Soft":5,"Medium":8,"Hard":12]
    var totalTime: Int = 0
    var secondsPassed: Int = 0
    var timer = Timer()
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
        totalTime = timesDictionary[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        }

    @objc func updateCounter() {
            if(secondsPassed < totalTime) {
                progressBar.progress = Float(secondsPassed / totalTime)
                secondsPassed += 1
            }
            else {
                timer.invalidate()
                titleLabel.text = "Done"
                
        }
    }
    

}
