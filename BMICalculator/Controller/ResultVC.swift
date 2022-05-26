//
//  ResultVC.swift
//  BMICalculator
//
//  Created by Kostya Lee on 20/09/21.
//

import UIKit
import SwiftUI

// View controller appearing after "calculate" button was pressed
// Finally set email and can push via kostya-lee003

class ResultVC: UIViewController {
    @IBOutlet weak var BMILabel: CountingLabel!
    
    var bmiValue: String?
    private let color: UIColor = UIColor(red: 128.0/255.0, green: 128.0/255.0, blue: 128.0/255.0, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 255.0/255.0, green: 204.0/255.0, blue: 153.0/255.0, alpha: 1)
        
        setBMILabel()
        //addCirclePB()
       }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        BMILabel.count(fromValue: 0, to: Float(bmiValue!)!, withDuration: 2.0)
    }
    
//    private func addCirclePB() {
//        let frame = self.view.safeAreaLayoutGuide.layoutFrame
//
//        let size = UIScreen.main.bounds.width * 0.74
//        let CV = ContentView(width: size, height: size)
//
//        let childView = UIHostingController(rootView: CV)
//        addChild(childView)
//
//        view.addSubview(childView.view)
//        childView.didMove(toParent: self)
//    }
  
    private func setBMILabel() {
        BMILabel.font = UIFont(name: "Quicksand-Medium", size: view.frame.width * 0.30)
        BMILabel.textColor = color
        
        BMILabel.translatesAutoresizingMaskIntoConstraints = false
    
        BMILabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        BMILabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

