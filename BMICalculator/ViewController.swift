//
//  ViewController.swift
//  BMICalculator
//
//  Created by Kostya Lee on 31/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var LogoLabel: UILabel!
    @IBOutlet weak var CalculateButton: UIButton!
    @IBOutlet weak var BMISlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLogo()
        setButton()
        setSlider()
    }
    
    func setLogo() {
        let gradient = GradientText()
        gradient.setGradient(color: &LogoLabel.textColor)
        gradient.setObjectPosition(obj: LogoLabel, view: self.view, constantPosition: -3.5)
        gradient.setLabelSize(view: self.view, label: LogoLabel)
    }
    
    @objc func buttonTapped(_ sender: UIButton!) {
        
    }

    func setButton() {
        let b = Button()
        self.view.addSubview(b)
        b.setButtonProperties(button: CalculateButton, view: view)
        b.setBtnPosition(view: view, button: CalculateButton)
        b.setBtnSize(view: view, button: CalculateButton)
    }
    
    func setSlider() {
        let s = Slider()
        s.setSliderConstraints(slider: BMISlider, view: self.view)
    }
}
