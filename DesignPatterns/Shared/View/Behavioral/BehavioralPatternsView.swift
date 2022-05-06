//
//  BehavioralPatternsView.swift
//  DesignPatterns
//
//  Created by Heecheon Park on 2/14/22.
//

import SwiftUI
import Network

struct BehavioralPatternsView: PatternView {

    @State var pressedPattern : Pattern? = nil
    let listTitle : String
    typealias Pattern = AnyBehavioralPattern
    
    var viewList: Array<Pattern> = [
        Pattern(_ChainOfResponsibility()),
        Pattern(_Command()),
        Pattern(_Interpreter()),
        Pattern(_Iterator()),
        Pattern(_Mediator()),
        Pattern(_Memento()),
        Pattern(_Observer()),
        Pattern(_State()),
        Pattern(_Strategy()),
        Pattern(_TemplateMethod()),
        Pattern(_Visitor()),
    ]
    
    var body: some View {
        VStack {
            List {
                Section(listTitle) {
                    ForEach(viewList) { bh in
                        Text(bh.description)
                           .onTapGesture {
                               pressedPattern = bh
                           }
                    }
                }
            }
        }
        .fullScreenCover(item: $pressedPattern, onDismiss: nil) { pattern in
            ExplanationView(pattern: AnyDesignPattern(pattern))
        }

    }
}

struct BehavioralPatternsView_Previews: PreviewProvider {
    static var previews: some View {
        BehavioralPatternsView(listTitle: "Behavioral Pattern")
    }
}
