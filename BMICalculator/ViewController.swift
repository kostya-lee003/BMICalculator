//
//  ViewController.swift
//  BMICalculator
//
//  Created by Kostya Lee on 31/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var LogoLabel: UILabel!
    @IBOutlet weak var Logo: UIImageView!
    @IBOutlet weak var CalculateButton: UIButton!
    @IBOutlet weak var BMISlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLogoLabel()
        setLogo()
        setButton()
        setSlider()
        
    }
    
    func setLogoLabel() {
        let gradient = GradientText()
        gradient.setGradient(color: &LogoLabel.textColor)
        gradient.setObjectPosition(obj: LogoLabel, view: self.view, constantPosition: -3.5)
        gradient.setLabelSize(view: self.view, label: LogoLabel)
    }
    
    @objc func buttonTapped(_ sender: UIButton!) {
        
    }

    func setButton() {
        Button(view: self.view, button: CalculateButton)
    }
    
    func setSlider() {
        Slider().setSliderConstraints(slider: BMISlider, view: self.view)
    }
    
    func setLogo() {
        
        BMICalculator.Logo(logo: Logo, relativeTo: LogoLabel, view: self.view)
       
        
    }
}
