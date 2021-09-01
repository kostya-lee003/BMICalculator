//
//  GradientText.swift
//  BMICalculator
//
//  Created by Kostya Lee on 01/09/21.
//

import UIKit


class GradientText {
    
    func setGradient(text: inout UIColor) {
        let gradient: UIImage = UIImage(named: "gradientColorImage")!
        text = UIColor(patternImage: gradient)
    }
    
    func setObjectPosition(obj: AnyObject, view: UIView, constantPosition: Float) {
        obj.centerYAnchor.constraint(equalTo: view.centerYAnchor,
                                     constant: view.frame.height / CGFloat(constantPosition)).isActive = true    // 2.8
        obj.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
