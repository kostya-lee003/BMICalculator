//
//  LogoLabel.swift
//  BMICalculator
//
//  Created by Kostya Lee on 16/09/21.
//

import Foundation
import UIKit

class Logo {
    
    func setPosition(relativeToObj: UILabel, logo: UIImageView, view: UIView) {

    }
    
//    func setSize(logo: UIImageView, view: UIView) {
//        let neededHeight = UIScreen.main.bounds.height * 0.2
//        logo.frame.size.height = neededHeight
        
//        let size = view.frame.width * 0.05
//        logo.frame = CGRect(x: 0, y: 0, width: size, height: size)
        
//    }
    init(logo: UIImageView) {
        logo.translatesAutoresizingMaskIntoConstraints = false
    }
}
