//
//  NodeView.swift
//  DesignPatterns
//
//  Created by Heecheon Park on 2/5/22.
//

import SwiftUI

struct NodeView<T>: View {
    
    var node: Node<T>
    
    var body: some View {
        VStack {
            Text("\(String(describing: node.value))")
                .padding()
                .border(Color.white)
        }
    }
}

