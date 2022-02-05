//
//  ContentView.swift
//  Shared
//
//  Created by Heecheon Park on 2/5/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var tree = Tree<Int>(50, children: [
        Tree(17, children: [
            Tree(12),
            Tree(23)
        ]),
        Tree(72, children: [
            Tree(54),
            Tree(72)
        ])
    ]).map(transform: Node.init)
    
    var body: some View {
        TreeView(tree: tree, node: { node in
            NodeView<Int>(node: node)
                .onAppear {
                    print("\(type(of: node.self))")
                }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
