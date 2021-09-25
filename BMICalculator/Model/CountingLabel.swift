//
//  CountingLabel.swift
//  BMICalculator
//
//  Created by Kostya Lee on 25/09/21.
//

import UIKit

class CountingLabel: UILabel {
    
    var counterVelocity: Float = 3.0
    
    enum CounterAnimationType {
        case Linear
        case EaseIn
        case EaseOut
    }
    
    enum CounterType {
        case Int
        case Float
    }
    
    
    var startNumber: Float = 0.0
    var endNumber: Float = 0.0
    
    var progress: TimeInterval!
    var duration: TimeInterval!
    var lastUpdate: TimeInterval!
    
    var timer: Timer?
    
    var counterType: CounterType! = .Float
    var counterAnimationType: CounterAnimationType! = .EaseOut
    
    var currentCounterValue: Float {
        if progress >= duration {
            return endNumber
        }
        
        let percentage = Float(progress / duration)
        let update = updateCounter(counterValue: percentage)
        
        return startNumber + (update * (endNumber - startNumber))
    }
    
    func count(fromValue: Float, to toValue: Float, withDuration duration: TimeInterval) {
        
        self.startNumber = fromValue
        self.endNumber = toValue
        self.duration = duration
        
        self.progress = 0
        self.lastUpdate = Date.timeIntervalSinceReferenceDate
        
        invalidateTimer()
        
        if duration == 0 {
            updateText(value: toValue)
            return
        }
        
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(CountingLabel.updateValue), userInfo: nil, repeats:  true)
        
    }
    
    @objc func updateValue() {
        let now = Date.timeIntervalSinceReferenceDate
        progress += (now - lastUpdate)
        lastUpdate = now
        
        if progress >= duration {
            invalidateTimer()
            progress = duration
        }
        
        updateText(value: currentCounterValue)
    }
    
    func updateText(value: Float) {
            self.text = String(format: "%.1f", value)
    }
    
    func updateCounter(counterValue: Float) -> Float{
            return 1.0 - powf(1.0 - counterValue, counterVelocity)
    }
    
    func invalidateTimer() {
        timer?.invalidate()
        timer = nil
    }
}
