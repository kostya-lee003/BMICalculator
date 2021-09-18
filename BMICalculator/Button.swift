//
//  Buton.swift
//  BMICalculator
//
//  Created by Kostya Lee on 09/09/21.
//

import Foundation
import SwiftUI
import UIKit


class Button: UIButton {
    
    func setButtonProperties(button: UIButton, view: UIView) {
        
        button.setTitle("Calculate!", for: .normal)
        button.setTitleColor(UIColor(red: 0.5, green: 0.1, blue: 0.4, alpha: 1), for: .normal)
        button.backgroundColor = UIColor(ciColor: .white)
       
        button.layer.borderWidth = CGFloat(1.7)
        button.layer.borderColor = UIColor(red: 0.4, green: 0.5, blue: 0.1, alpha: 0.5).cgColor
        button.layer.cornerRadius = CGFloat(10)
        button.titleLabel!.font = UIFont(name: "Quicksand-SemiBold", size: view.frame.width * 0.09)
        
    }
    
    func setBtnSize(view: UIView, button: UIButton) {
        button.widthAnchor.constraint(equalToConstant: view.frame.width / 1.36).isActive = true
        button.heightAnchor.constraint(equalToConstant: view.frame.height / 11.5).isActive = true
    }
    
    func setBtnPosition(view: UIView, button: UIButton) {
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: view.frame.height / 3.7).isActive = true
    }
    
}
