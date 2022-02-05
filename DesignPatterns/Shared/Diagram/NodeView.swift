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
        VStack(spacing: 0) {
            Text("\(String(describing: node.name))")
                .padding(.vertical)
            Text("\(String(describing: node.value))")
        }
        .padding()
        .background(Color.white)
        .border(Color.black)
    }
}

