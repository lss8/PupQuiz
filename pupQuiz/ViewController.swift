//
//  ViewController.swift
//  pupQuiz
//
//  Created by lss8 on 18/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var logoImage: UIImageView!
    @IBOutlet var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        startButton.translatesAutoresizingMaskIntoConstraints = false
        
        logoImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.view.addConstraint(NSLayoutConstraint(
            item: logoImage!, attribute: .top, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .top, multiplier: 3.0, constant: 30
        ))
        
        startButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.view.addConstraint(NSLayoutConstraint(
            item: startButton!, attribute: .top, relatedBy: .equal, toItem: logoImage, attribute: .bottom, multiplier: 1.5, constant: 0
        ))
        
    }

}

