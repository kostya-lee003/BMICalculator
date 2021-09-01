//
//  ViewController.swift
//  BMICalculator
//
//  Created by Kostya Lee on 31/08/21.
//

import UIKit



class ViewController: UIViewController {
    @IBOutlet weak var LogoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradient = GradientText()
        gradient.setGradient(text: &LogoLabel.textColor)
        gradient.setObjectPosition(obj: LogoLabel, view: self.view, constantPosition: -3.5)
        
        
    }
    
}
