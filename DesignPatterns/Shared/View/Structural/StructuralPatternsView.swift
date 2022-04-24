//
//  StructuralPatternsView.swift
//  DesignPatterns
//
//  Created by Heecheon Park on 2/14/22.
//

import SwiftUI

struct StructuralPatternsView: PatternView {
    
    @State var pressedPattern : Pattern? = nil
    
    typealias Pattern = AnyStructuralPattern
    
    var viewList: [AnyStructuralPattern] = [
        Pattern(_Adapter()),
        Pattern(_Bridge()),
        Pattern(_Composite()),
        Pattern(_Decorator()),
        Pattern(_Facade()),
        Pattern(_Flyweight()),
        Pattern(_Proxy())
    ]
    
    var body: some View {
        VStack {
            List(viewList) { bh in
                Text(bh.description)
                   .onTapGesture {
                       pressedPattern = bh
                   }

            }
        }
        .fullScreenCover(item: $pressedPattern, onDismiss: nil) { pattern in
            ExplanationView(pattern: AnyDesignPattern(pattern))
        }
    }
}

struct StructuralPatternsView_Previews: PreviewProvider {
    static var previews: some View {
        StructuralPatternsView()
    }
}
