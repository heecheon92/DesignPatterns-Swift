//
//  DesignPattern.swift
//  DesignPatterns
//
//  Created by Heecheon Park on 2/5/22.
//

import Foundation

public protocol DesignPattern : CustomStringConvertible, Identifiable {}

public protocol CreationalPattern: DesignPattern {}
public protocol StructuralPattern: DesignPattern {}
public protocol BehavioralPattern: DesignPattern {}

public struct AnyDesignPattern : DesignPattern {
    public var description: String
    
    public var id: UUID
    
    init<T: DesignPattern>(_ designType: T) {
        self.description = designType.description
        self.id = designType.id as! UUID
    }
}
