//
//  ViewController.swift
//  XODOS
//
//  Created by IO on 22/08/2019.
//  Copyright © 2019 mukh.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIView!
    
    let gradientLayer = CAGradientLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundView.layer.addSublayer(gradientLayer)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        landingBackground()
    }

    func landingBackground(){
        let topColour = UIColor(red: 151.0/255.0, green: 151.0/255.0, blue: 151.0, alpha: 1.0).cgColor
        let bottomColour = UIColor(red:72.0/255.0, green: 72.0/255.0, blue: 72.0/255.0, alpha:1.0).cgColor
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [topColour, bottomColour]
    }

}

