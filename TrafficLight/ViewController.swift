//
//  ViewController.swift
//  TrafficLight
//
//  Created by Viktor Smirnov on 22.09.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var yellowLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLabel.isHidden = true
        yellowLabel.isHidden = true
        greenLabel.isHidden = true
//        greetingButton.configuration = setupButton(with: "Show Greeting")
    }
    
    @IBAction func startButton() {
    }
    

}

