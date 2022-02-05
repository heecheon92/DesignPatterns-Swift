//
//  DiagramNode.swift
//  DesignPatterns
//
//  Created by Heecheon Park on 2/5/22.
//

import SwiftUI

struct TreeView<T: Identifiable, V:View>: View {
    
    let tree: Tree<T>
    let node: (T) -> V
    
    var body: some View {
        VStack(alignment: .center) {
            node(tree.value)
            HStack(alignment: .bottom, spacing: 10) {
                ForEach(tree.children, id: \.value.id) { child in
                    TreeView(tree: child, node: self.node)
                }
            }
        }
    }
}
