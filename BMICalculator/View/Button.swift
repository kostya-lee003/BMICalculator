//
//  Buton.swift
//  BMICalculator
//
//  Created by Kostya Lee on 09/09/21.
//

import Foundation
import SwiftUI
import UIKit

// Cool button)
class Button: UIButton {
    
    func setButtonProperties(button: UIButton, view: UIView) {
        
        button.setTitleColor(UIColor(red: 0.5, green: 0.1, blue: 0.4, alpha: 1), for: .normal)
        button.backgroundColor = UIColor(ciColor: .white)
        button.layer.borderWidth = CGFloat(1.7)
        button.layer.borderColor = UIColor(red: 0.4, green: 0.5, blue: 0.1, alpha: 0.5).cgColor
        button.layer.cornerRadius = CGFloat(10)
        button.titleLabel!.font = UIFont(name: "Quicksand-SemiBold", size: view.frame.width * 0.09)
    }
    
    private func setBtnSize(view: UIView, button: UIButton) {
        button.widthAnchor.constraint(equalToConstant: view.frame.width / 1.36).isActive = true
        button.heightAnchor.constraint(equalToConstant: view.frame.height / 11.5).isActive = true
    }
    
    private func setBtnPosition(view: UIView, button: UIButton) {
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: view.frame.height / 3.5).isActive = true
    }
    
    init(view: UIView, button: UIButton!) {
        super.init(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        setBtnSize(view: view, button: button)
        setBtnPosition(view: view, button: button)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
