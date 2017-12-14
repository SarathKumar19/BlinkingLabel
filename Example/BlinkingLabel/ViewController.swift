//
//  ViewController.swift
//  BlinkingLabel
//
//  Created by SarathKumar19 on 12/14/2017.
//  Copyright (c) 2017 SarathKumar19. All rights reserved.
//

import UIKit
import BlinkingLabel

class ViewController: UIViewController {

    var isBlinking = false
    let blinkingLabel = BlinkingLabel(frame: CGRect(x: 150, y: 200, width: 200, height: 30))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1.0)
        
        // Setup the BlinkingLabel
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
        
        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame: CGRect(x: 100, y: 250, width: 150, height: 30))
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(UIColor.purple, for: .normal)
        toggleButton.backgroundColor = UIColor.cyan
        toggleButton.layer.cornerRadius = 7
        toggleButton.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        toggleButton.addTarget(self, action: #selector(toggleBlinking), for: .touchUpInside)
        view.addSubview(toggleButton)
    }

    @objc func toggleBlinking() {
        (isBlinking) ? blinkingLabel.stopBlinking() : blinkingLabel.startBlinking()
        isBlinking = !isBlinking
    }
}

