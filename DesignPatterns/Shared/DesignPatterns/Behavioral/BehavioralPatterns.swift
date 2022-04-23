//
//  BehavioralPatterns.swift
//  DesignPatterns (iOS)
//
//  Created by Heecheon Park on 4/23/22.
//

import Foundation

public struct AnyBehavioralPattern: BehavioralPattern {
    
    public var description: String
    public var id: UUID
    
    init<T: BehavioralPattern>(_ behaviorType: T) {
        self.description = behaviorType.description
        self.id = behaviorType.id as! UUID
    }
}

public struct _ChainOfResponsibility: BehavioralPattern {

    public var description: String = "Chain of Responsibility"
    
    public var id = UUID()
}
public struct _Command: BehavioralPattern {

    public var description: String = "Command"
    
    public var id = UUID()
}
public struct _Interpreter: BehavioralPattern {

    public var description: String = "Interpreter"
    
    public var id = UUID()
}
public struct _Iterator: BehavioralPattern {

    public var description: String = "Iterator"
    
    public var id = UUID()
}
public struct _Mediator: BehavioralPattern {

    public var description: String = "Mediator"
    
    public var id = UUID()
}
public struct _Memento: BehavioralPattern {

    public var description: String = "Memento"
    
    public var id = UUID()
}
public struct _Observer: BehavioralPattern {

    public var description: String = "Observer"
    
    public var id = UUID()
}
public struct _State: BehavioralPattern {

    public var description: String = "State"
    
    public var id = UUID()
}
public struct _Strategy: BehavioralPattern {

    public var description: String = "Strategy"
    
    public var id = UUID()
}
public struct _TemplateMethod: BehavioralPattern {

    public var description: String = "Template Method"
    
    public var id = UUID()
}
public struct _Visitor: BehavioralPattern {

    public var description: String = "Visitor"
    
    public var id = UUID()
}

