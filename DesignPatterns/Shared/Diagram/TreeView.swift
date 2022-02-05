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
    
    typealias Key = CollectDict<T.ID, Anchor<CGPoint>>
    
    var body: some View {
        VStack(alignment: .center) {
            node(tree.value)
                .anchorPreference(key: Key.self, value: .center, transform: {
                    [self.tree.value.id: $0]
                })
            HStack(alignment: .bottom, spacing: 10) {
                ForEach(tree.children, id: \.value.id) { child in
                    TreeView(tree: child, node: self.node)
                }
            }
        }
        .backgroundPreferenceValue(Key.self, { (centers: [T.ID: Anchor<CGPoint>]) in
                    GeometryReader { proxy in
                        ForEach(self.tree.children, id: \.value.id, content: { child in
                            Line(
                                from: proxy[centers[self.tree.value.id]!],
                                to: proxy[centers[child.value.id]!]
                            ).stroke()
                        })
                    }
                })
    }
}
