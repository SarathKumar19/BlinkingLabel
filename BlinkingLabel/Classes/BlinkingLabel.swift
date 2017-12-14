//
//  BlinkingLabel.swift
//  BlinkingLabel
//
//  Created by Sarath Kumar G on 14/12/17.
//

import Foundation

public class BlinkingLabel : UILabel {
    public func startBlinking() {
        let options : UIViewAnimationOptions = UIViewAnimationOptions.repeat.union(.autoreverse)
        UIView.animate(withDuration: 0.3, delay:0.0, options:options, animations: {
            self.alpha = 0
        }, completion: nil)
    }
    
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
