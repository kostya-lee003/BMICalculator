//
//  ViewController.swift
//  BMICalculator
//
//  Created by Kostya Lee on 31/08/21.
//

import UIKit

class CalculateVC: UIViewController {
    
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
        
        setLabel(label: WeightLabel, position: 0.11)
        setLabel(label: HeightLabel, position: -0.05)
        
        Height.text = String(format: "%.1f cm", HeightSlider.value * 163 + 50)
        Weight.text = String(format: "%.1f kg", WeightSlider.value * 150 + 10)
        setLabelNumber(label: Weight, position: 0.11)
        setLabelNumber(label: Height, position: -0.05)
    }
    
    @IBAction func ChangeHeight(_ sender: UISlider) {
        Height.text = String(format: "%.1f cm", sender.value * 163 + 50)
    }
    
    @IBAction func ChangeWeight(_ sender: UISlider) {
        Weight.text = String(format: "%.1f kg", sender.value * 150 + 10)
    }

    @IBAction func ButtonTapped(_ sender: UIButton) {
        //self.prepare(for: "", sender: )
        self.performSegue(withIdentifier: "goToResult", sender: self)

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let weight = WeightSlider.value * 150 + 10
            let height = (HeightSlider.value * 163 + 50) / 100
            
            let bmi = weight / (height * height)
            
            let destinationVC = segue.destination as! ResultVC
            destinationVC.bmiValue = String(format: "%.1f", bmi)
            
            }
     }
}


extension CalculateVC {
    func setLogoLabel() {
        let gradient = GradientText()
        gradient.setGradient(color: &LogoLabel.textColor)
        gradient.setObjectPosition(obj: LogoLabel, view: self.view, constantPosition: -3.5)
        gradient.setLabelSize(view: self.view, label: LogoLabel)
    }
    
    func setButton() {
        Button(view: self.view, button: CalculateButton).setButtonProperties(button: CalculateButton, view: self.view)
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
