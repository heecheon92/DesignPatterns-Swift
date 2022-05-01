//
//  SplashScreen.swift
//  DesignPatterns (iOS)
//
//  Created by Heecheon Park on 5/1/22.
//

import SwiftUI

struct SplashScreen: View {
    
    @State var startAnimation: Bool = false
    
    @State var circleAnimation1: Bool = false
    @State var circleAnimation2: Bool = false
    
    @Binding var endAnimation: Bool
    
    var body: some View {
        ZStack {
            Color.pastelPurple
            
            Group {
                SplashShape()
                    .trim(from: 0, to: startAnimation ? 1  : 0)
                    .stroke(Color.yellow, style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round))
                
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 35, height: 35)
                    .scaleEffect(circleAnimation1 ? 1 : 0)
                    .offset(x: -80, y: 22)
                
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 35, height: 35)
                    .scaleEffect(circleAnimation2 ? 1 : 0)
                    .offset(x: 80, y: -22)
                
            }
            .frame(width: 220, height: 130)
            .scaleEffect(endAnimation ? 0.15 : 0.9)
            .rotationEffect(Angle(degrees: endAnimation ? 85 : 0))
        }
        .offset(y: endAnimation ? -(rect.height * 2) : 0)
        .ignoresSafeArea()
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now()) {
                withAnimation(.spring()) {
                    circleAnimation1.toggle()
                }
                
                withAnimation(.interactiveSpring(response: 0.7, dampingFraction: 1.05, blendDuration: 1.05).delay(0.3)) {
                    startAnimation.toggle()
                }
                
                withAnimation(.spring().delay(0.7)) {
                    circleAnimation2.toggle()
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen(endAnimation: .constant(false))
    }
}


