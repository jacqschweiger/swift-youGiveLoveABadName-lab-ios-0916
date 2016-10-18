//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        startingHeightConstraint.isActive = true
        
    }
    
    @IBOutlet weak var bonjoviImage: UIImageView!
    
    
    @IBOutlet weak var bigHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var smallHeightConstraint: NSLayoutConstraint!
    

    @IBOutlet weak var startingHeightConstraint: NSLayoutConstraint!
    
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        
        self.bonjoviImage.translatesAutoresizingMaskIntoConstraints = false
        
        UIView.animateKeyframes(withDuration: 5.0, delay: 0.0, options: .calculationModeLinear, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 1/3.0, animations: {
                self.smallHeightConstraint.isActive = true
                self.startingHeightConstraint.isActive = false
                self.view.layoutIfNeeded()
            })
            
            UIView.addKeyframe(withRelativeStartTime: 1/3.0, relativeDuration: 1/3.0, animations: {
                self.smallHeightConstraint.isActive = false
                self.bigHeightConstraint.isActive = true
                self.view.layoutIfNeeded()
            })
            
            UIView.addKeyframe(withRelativeStartTime: 2/3.0, relativeDuration: 1/3.0, animations: {
                self.startingHeightConstraint.isActive = true
                self.bigHeightConstraint.isActive = false
                self.view.layoutIfNeeded()
            })
            
        }, completion: nil)
    
    }

}


