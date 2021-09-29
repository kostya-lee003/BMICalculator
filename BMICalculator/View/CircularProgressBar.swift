//
//  CircularProgressBar.swift
//  BMICalculator
//
//  Created by Kostya Lee on 27/09/21.
//

import SwiftUI

struct ContentView: View {
    let y: CGFloat
    
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        ZStack {
            //Color.backgroundColor
            //    .edgesIgnoringSafeArea(.all)
            VStack {
                ZStack {
                    Track(width: width, height: height)
                    Outline(width: width, height: height)
                }
            }
        } .position(x: UIScreen.main.bounds.width * 0.5, y: y)
        // .offset(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.5 + UIScreen.main.bounds.height * -0.195)
    }
    
}

struct Outline: View {
    
    let width: CGFloat
    let height: CGFloat
    
    var percentage: CGFloat = 0
    var colors: [Color] = [Color.outlineColor]
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.clear)
                .frame(width: width, height: height)
                .overlay(
                    Circle()
                        .trim(from: 0, to: percentage * 0.01)
                        .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                        .fill(AngularGradient(gradient:
                                                .init(colors: colors), center: .center, startAngle: .zero, endAngle: .init(degrees: 360))
                        ).animation(.spring(response: 2.0, dampingFraction: 1.0, blendDuration: 1.0)))
        }
    }
}


struct Track: View {
    
    let width: CGFloat
    let height: CGFloat
    
    var colors: [Color] = [Color.trackColor]
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.backgroundColor)
                .opacity(0)
                .frame(width: width, height: height)
                .overlay(
                    Circle()
                        .stroke(style: StrokeStyle(lineWidth: 12))
                        .fill(AngularGradient(gradient: .init(colors: colors), center: .center))
                        
                )
                
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(y: 0, width: 0, height: 0)
    }
}
