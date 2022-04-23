//
//  CreationalPatterns.swift
//  DesignPatterns (iOS)
//
//  Created by Heecheon Park on 4/23/22.
//

import Foundation

public struct AnyCreationalPattern : CreationalPattern {
    public var description: String
    
    public var id: UUID
    
    init<T: CreationalPattern>(_ creationalType: T) {
        self.description = creationalType.description
        self.id = creationalType.id as! UUID
    }
}

public struct _AbstractFactory : CreationalPattern {
    public var description: String = "Abstract Factory"
    
    public var id: UUID = UUID()
}

public struct _Builder: CreationalPattern {
    public var description: String = "Builder"
    
    public var id: UUID = UUID()
}

public struct _FactoryMethod: CreationalPattern {
    public var description: String = "Factory Method"
    
    public var id: UUID = UUID()
}

public struct _Prototype: CreationalPattern {
    public var description: String = "Prototype"
    
    public var id: UUID = UUID()
}

public struct _Singleton: CreationalPattern {
    public var description: String = "Singleton"
    
    public var id: UUID = UUID()
}
