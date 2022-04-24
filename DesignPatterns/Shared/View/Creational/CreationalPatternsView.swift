//
//  CreationalPatternsView.swift
//  DesignPatterns
//
//  Created by Heecheon Park on 2/14/22.
//

import SwiftUI

struct CreationalPatternsView: PatternView {
    
    @State var pressedPattern : Pattern? = nil
    
    typealias Pattern = AnyCreationalPattern
    
    var viewList: Array<Pattern> = [
        Pattern(_AbstractFactory()),
        Pattern(_Builder()),
        Pattern(_FactoryMethod()),
        Pattern(_Prototype()),
        Pattern(_Singleton())
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

struct CreationalPatternsView_Previews: PreviewProvider {
    static var previews: some View {
        CreationalPatternsView()
    }
}
