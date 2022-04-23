//
//  StructuralPatterns.swift
//  DesignPatterns (iOS)
//
//  Created by Heecheon Park on 4/23/22.
//

import Foundation

public struct AnyStructuralPattern: StructuralPattern {
    public var description: String
    
    public var id: UUID
    
    init<T: StructuralPattern>(_ structuralType: T) {
        self.description = structuralType.description
        self.id = structuralType.id as! UUID
    }
}


public struct _Adapter: StructuralPattern {
    public var description: String
    
    public var id: UUID = UUID()
}
public struct _Bridge: StructuralPattern {
    public var description: String
    
    public var id: UUID = UUID()
}
public struct _Composite: StructuralPattern {
    public var description: String
    
    public var id: UUID = UUID()
}
public struct _Decorator: StructuralPattern {
    public var description: String
    
    public var id: UUID = UUID()
}
public struct _Facade: StructuralPattern {
    public var description: String
    
    public var id: UUID = UUID()
}
public struct _Flyweight: StructuralPattern {
    public var description: String
    
    public var id: UUID = UUID()
}
public struct _Proxy: StructuralPattern{
    public var description: String
    
    public var id: UUID = UUID()
}


