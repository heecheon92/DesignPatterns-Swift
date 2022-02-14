//
//  ContentView.swift
//  Shared
//
//  Created by Heecheon Park on 2/5/22.
//

import SwiftUI
import WikipediaKit

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
        
        NavigationView {
            VStack {
                MainNavigationCell(cellTitle: "Behavioral", cellBgColor: .pastelGreen)
                    .padding()
                    .onAppear {
                        tryWiki()
                    }
                MainNavigationCell(cellTitle: "Structurual", cellBgColor: .pastelPink)
                    .padding()
                MainNavigationCell(cellTitle: "Creational", cellBgColor: .pastelPurple)
                    .padding()
            }
            .navigationTitle("Design Patterns")
            .navigationBarTitleDisplayMode(.large)
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
    
    func tryWiki() -> Void {
        let language = WikipediaLanguage("en")

        let _ = Wikipedia.shared.requestOptimizedSearchResults(language: language, term: "Behavioral Pattern") { (searchResults, error) in

            guard error == nil else { return }
            guard let searchResults = searchResults else { return }

            print(searchResults.items.first?.displayText)
//            for articlePreview in searchResults.items {
//                print(articlePreview.displayText)
//            }
        }
    }
}

struct MainNavigationCell: View {
    
    var cellTitle: String = ""
    var cellBgColor: Color = .clear
    
    var body : some View {
        VStack(alignment: .leading) {
            Text(cellTitle)
                .font(.system(size: 25))
                .fontWeight(.bold)
                .padding()
            Spacer()
            HStack {
                Spacer()
                Text("some description")
            }
        }
        .background(RoundedRectangle(cornerRadius: 15).fill(cellBgColor))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
