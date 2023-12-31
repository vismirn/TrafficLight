//
//  ViewController.swift
//  TrafficLight
//
//  Created by Viktor Smirnov on 22.09.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButtonOutlet: UIButton!
    private let alphaLet = 0.30000001192092896
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = alphaLet
        redView.layer.masksToBounds = true
        redView.layer.cornerRadius = redView.frame.width / 2
        
        yellowView.alpha = alphaLet
        yellowView.layer.masksToBounds = true
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        
        greenView.alpha = alphaLet
        greenView.layer.masksToBounds = true
        greenView.layer.cornerRadius = greenView.frame.width / 2
    }
    @IBAction func startButton() {
        startButtonOutlet.setTitle("NEXT", for: .normal)
        if redView.alpha == 1 {
            redView.alpha = alphaLet
            yellowView.alpha = 1
            greenView.alpha = alphaLet
        } else if yellowView.alpha == 1 {
            redView.alpha = alphaLet
            yellowView.alpha = alphaLet
            greenView.alpha = 1
        } else {
            redView.alpha = 1
            yellowView.alpha = alphaLet
            greenView.alpha = alphaLet
        }
    }
    
    
//    private func setupButton(with title: String) -> UIButton.Configuration {
//        var buttonConfiguration = UIButton.Configuration.gray()
////        buttonConfiguration.title = title
//        return buttonConfiguration
//    }

    

}

