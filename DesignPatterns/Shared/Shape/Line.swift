//
//  Line.swift
//  DesignPatterns (iOS)
//
//  Created by Heecheon Park on 2/5/22.
//

import Foundation
import SwiftUI

struct Line: Shape {
    var from: CGPoint
    var to: CGPoint

    func path(in rect: CGRect) -> Path {
        Path { p in
            p.move(to: self.from)
            p.addLine(to: self.to)
        }
    }
}

extension Line {
    var animatableData: AnimatablePair<CGPoint.AnimatableData, CGPoint.AnimatableData> {
        get { AnimatablePair(from.animatableData, to.animatableData) }
        set { (from.animatableData, to.animatableData) = (newValue.first, newValue.second) }
    }
}
