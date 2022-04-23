//
//  BehavioralPatternsView.swift
//  DesignPatterns
//
//  Created by Heecheon Park on 2/14/22.
//

import SwiftUI

struct BehavioralPatternsView: PatternView {
    
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
        List(viewList) { bh in
            ListingCell(pattern: bh)
        }
    }
    
    func ListingCell(pattern: AnyBehavioralPattern) -> some View {
        return Text(pattern.description)
    }
}

struct BehavioralPatternsView_Previews: PreviewProvider {
    static var previews: some View {
        BehavioralPatternsView()
    }
}
