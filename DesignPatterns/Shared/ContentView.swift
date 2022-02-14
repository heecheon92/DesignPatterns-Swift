//
//  ContentView.swift
//  Shared
//
//  Created by Heecheon Park on 2/5/22.
//

import SwiftUI
import WikipediaKit

struct ContentView: View {
    @StateObject var initialFetcher = InitialDataFetcher()
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
        
        if (initialFetcher.patternInfoList.count == 3) {
            MainView(initialFetcher: initialFetcher)
        } else {
            Text("Fetching Initial Data")
                .task {
                    await initialFetcher.fetchFromWiki(pattern: .Creational)
                    await initialFetcher.fetchFromWiki(pattern: .Structural)
                    await initialFetcher.fetchFromWiki(pattern: .Behavioral)
                }
        }
        
        
//        TreeView(tree: tree, node: { node in
//            NodeView<Int>(node: node)
//                .onAppear {
//                    print("\(type(of: node.self))")
//                }
//        })
//
//        CodeView()
//            .frame(height: UIScreen.main.bounds.height * 0.4)
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
