//
//  LogoLabel.swift
//  BMICalculator
//
//  Created by Kostya Lee on 16/09/21.
//

import Foundation
import UIKit

class Logo {
    
    private func setPosition(relativeToObj: UILabel, logo: UIImageView, view: UIView) {
        logo.leadingAnchor.constraint(equalTo: relativeToObj.leadingAnchor, constant: view.frame.width * 0.78).isActive = true
        logo.topAnchor.constraint(equalTo: relativeToObj.topAnchor, constant: view.frame.width * -0.05).isActive = true
    }
    
    private func setSize(logo: UIImageView, view: UIView) {
        logo.widthAnchor.constraint(equalToConstant: view.frame.width / 7.8).isActive = true
        logo.heightAnchor.constraint(equalToConstant: view.frame.width / 7.8).isActive = true
    }
    
    init(logo: UIImageView, relativeTo: UILabel, view: UIView) {
        logo.translatesAutoresizingMaskIntoConstraints = false
        
        setSize(logo: logo, view: view)
        setPosition(relativeToObj: relativeTo, logo: logo, view: view)
    }
}
