//
//  ResultVC.swift
//  BMICalculator
//
//  Created by Kostya Lee on 20/09/21.
//

import UIKit
import SwiftUI


class ResultVC: UIViewController {
    @IBOutlet weak var BMILabel: CountingLabel!
    
    
    var bmiValue: String?
    
    private let color: UIColor = UIColor(red: 128.0/255.0, green: 128.0/255.0, blue: 128.0/255.0, alpha: 1)
    
    
    @IBOutlet weak var OKButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 255.0/255.0, green: 204.0/255.0, blue: 153.0/255.0, alpha: 1)
        setOKButton()
        setBMILabel()
        
       }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        BMILabel.count(fromValue: 0, to: Float(bmiValue!)!, withDuration: 2.0)
    }
    
    
    @IBAction func OKPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    private func setOKButton() {
        Button(view: self.view, button: OKButton)
    
        OKButton.setTitleColor(color, for: .normal)
        OKButton.layer.borderWidth = CGFloat(1.7)
        OKButton.layer.borderColor = color.cgColor
        OKButton.layer.cornerRadius = CGFloat(10)
        OKButton.titleLabel!.font = UIFont(name: "Quicksand-Bold", size: self.view.frame.width * 0.1)
    }
    
    private func setBMILabel() {
        BMILabel.font = UIFont(name: "Quicksand-Medium", size: view.frame.width * 0.30)
        BMILabel.textColor = color
        
        BMILabel.translatesAutoresizingMaskIntoConstraints = false
        
        BMILabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        BMILabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: view.frame.height * -0.15).isActive = true
    }
}

