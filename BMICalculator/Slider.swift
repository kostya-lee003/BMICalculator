//
//  Slider.swift
//  BMICalculator
//
//  Created by Kostya Lee on 16/09/21.
//

import Foundation
import UIKit

class Slider {
    func setSliderConstraints(slider: UISlider, view: UIView) {
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.73).isActive = true
                                      
        slider.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 90).isActive = true
        slider.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
}
