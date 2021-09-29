//
//  GradientText.swift
//  BMICalculator
//
//  Created by Kostya Lee on 01/09/21.
//

import UIKit


class GradientLabel {
    
    func setGradient(color: inout UIColor) {
        let gradient: UIImage = UIImage(named: "gradientColorImage")!
        color = UIColor(patternImage: gradient)
    }
    
    func setObjectPosition(obj: AnyObject, view: UIView, constantPosition: Float) {
        obj.centerYAnchor.constraint(equalTo: view.centerYAnchor,
                                     constant: view.frame.height / CGFloat(constantPosition) ).isActive = true
        obj.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -10).isActive = true
    }
    
    func setLabelSize(view: UIView, label: UILabel) {
        label.font = label.font.withSize(view.frame.width / 8.5)
    }
    
}
