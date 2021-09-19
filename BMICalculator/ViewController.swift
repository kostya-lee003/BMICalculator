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
    
    @IBOutlet weak var WeightLabel: UILabel!
    @IBOutlet weak var WeightSlider: UISlider!
    @IBOutlet weak var Weight: UILabel!
    
    @IBOutlet weak var HeightLabel: UILabel!
    @IBOutlet weak var HeightSlider: UISlider!
    @IBOutlet weak var Height: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLogoLabel()
        setLogo()
        setButton()
        setSlider()
        
        setLabel(label: WeightLabel, position: -0.05)
        setLabel(label: HeightLabel, position: 0.11)
        
        setLabelNumber(label: Weight, position: -0.05)
        setLabelNumber(label: Height, position: 0.11)
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
        Slider(slider: WeightSlider, view: self.view, constant: self.view.frame.height * 0.08)
        Slider(slider: HeightSlider, view: self.view, constant: self.view.frame.height * -0.08)
    }
    
    func setLogo() {
        BMICalculator.Logo(logo: Logo, relativeTo: LogoLabel, view: self.view)
    }
    
    func setLabel(label: UILabel, position: CGFloat) {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leadingAnchor.constraint(equalTo: HeightSlider.leadingAnchor).isActive = true
        label.topAnchor.constraint(equalTo: HeightSlider.topAnchor, constant: self.view.frame.height * position).isActive = true
        label.font = label.font.withSize(self.view.frame.height * 0.028)
    }
    
    func setLabelNumber(label: UILabel, position: CGFloat) {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.trailingAnchor.constraint(equalTo: HeightSlider.trailingAnchor).isActive = true
        label.topAnchor.constraint(equalTo: HeightSlider.topAnchor, constant: self.view.frame.height * position).isActive = true
        label.font = label.font.withSize(self.view.frame.height * 0.028)
    }
}
