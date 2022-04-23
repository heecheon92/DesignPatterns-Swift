//
//  CreationalPatternsView.swift
//  DesignPatterns
//
//  Created by Heecheon Park on 2/14/22.
//

import SwiftUI

struct CreationalPatternsView: PatternView {
    
    typealias Pattern = AnyCreationalPattern
    
    var viewList: Array<Pattern> = [
        Pattern(_AbstractFactory()),
        Pattern(_Builder()),
        Pattern(_FactoryMethod()),
        Pattern(_Prototype()),
        Pattern(_Singleton())
    ]
    
    var body: some View {
        List(viewList) { cr in
            ListingCell(pattern: cr)
        }
    }
    
    func ListingCell(pattern: AnyCreationalPattern) -> some View {
        return Text(pattern.description)
    }
}

struct CreationalPatternsView_Previews: PreviewProvider {
    static var previews: some View {
        CreationalPatternsView()
    }
}
