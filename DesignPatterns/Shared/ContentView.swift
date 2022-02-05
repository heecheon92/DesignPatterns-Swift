//
//  ContentView.swift
//  Shared
//
//  Created by Heecheon Park on 2/5/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var tree = Tree<Int>(name: "root", value: 50, children: [
        Tree(name: "child", value: 17, children: [
            Tree(name: "leaf", value: 12),
            Tree(name: "leaf", value: 23)
        ]),
        Tree(name: "child", value: 72, children: [
            Tree(name: "leaf", value: 54),
            Tree(name: "leaf", value: 72)
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
