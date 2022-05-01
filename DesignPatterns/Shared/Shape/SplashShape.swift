//
//  SplashShape.swift
//  DesignPatterns (iOS)
//
//  Created by Heecheon Park on 5/1/22.
//

import Foundation
import SwiftUI

struct SplashShape: Shape {
    func path(in rect: CGRect) -> Path {
        return Path { path in
            
            let mid = rect.width / 2
            let height = rect.height
            
            path.move(to: CGPoint(x: mid - 80, y: height))
            path.addArc(center: CGPoint(x: mid - 40, y: height), radius: 40, startAngle: Angle(degrees: 180), endAngle: .zero, clockwise: true)
            
            path.move(to: CGPoint(x: mid, y: height))
            path.addLine(to: CGPoint(x: mid, y: 0))
            
            path.addArc(center: CGPoint(x: mid + 40, y: 0), radius: 40, startAngle: Angle(degrees: -180), endAngle: .zero, clockwise: false)
        }
    }
}
