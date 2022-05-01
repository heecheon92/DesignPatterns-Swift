//
//  File.swift
//  DesignPatterns
//
//  Created by Heecheon Park on 2/14/22.
//

import Foundation
import SwiftUI
import WikipediaKit

public class InitialDataFetcher : ObservableObject {
    
    @Published public var patternInfoList: [BasicPatternInfo] = [BasicPatternInfo]()
    
    public var getStructurualPattern : BasicPatternInfo {
        return self.patternInfoList.filter { $0.type == .Structural }.first!
    }
    
    public var getBehavioralPattern : BasicPatternInfo {
        return self.patternInfoList.filter { $0.type == .Behavioral }.first!
    }
    
    public var getCreationalPattern : BasicPatternInfo {
        return self.patternInfoList.filter { $0.type == .Creational }.first!
    }
    
    func fetchFromWiki(pattern: eDesignPattern) async -> Void {
        let language = WikipediaLanguage("en")
        
        var term : String = ""
        
        switch (pattern) {
        case .Structural: term = "Structural Pattern"
        case .Behavioral: term = "Behavioral Pattern"
        case .Creational: term = "Creational Pattern"
        }

        let _ = Wikipedia.shared.requestOptimizedSearchResults(language: language, term: term) { [weak self] (searchResults, error) in
            guard let self = self else { return }
            guard error == nil else { return }
            guard let searchResults = searchResults else { return }
            
            let dispText : String = searchResults.items.first?.displayText ?? ""
            
            self.patternInfoList.append(BasicPatternInfo(name: term, description: dispText, type: pattern))
        }
    }
}

public struct BasicPatternInfo : Identifiable, Equatable {
    public var id = UUID()
    
    var name: String
    var description: String
    var type: eDesignPattern
}
