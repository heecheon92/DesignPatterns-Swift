//
//  Tree.swift
//  DesignPatterns
//
//  Created by Heecheon Park on 2/5/22.
//

import Foundation

struct Tree<T> {
    var value: T
    var children: [Tree<T>] = []
    init(_ value: T, children: [Tree<T>] = []) {
        self.value = value
        self.children = children
    }
}

class Node<T>: Identifiable {
    let value: T
    init(_ value: T) { self.value = value }
}

extension Tree {
    func map<U>(transform: (T) -> U) -> Tree<U> {
        Tree<U>(transform(value), children: children.map { $0.map(transform: transform) })
    }
}

//example
//let simpleTree = Tree<Int>(50, children: [
//    Tree(17, children: [
//        Tree(12),
//        Tree(23)
//    ]),
//    Tree(72, children: [
//        Tree(54),
//        Tree(72)
//    ])
//])
//let uniqueTree: Tree<Node<Int>> = simpleTree.map(Node.init)
