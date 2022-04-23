//
//  MainView.swift
//  DesignPatterns
//
//  Created by Heecheon Park on 2/14/22.
//

import SwiftUI


public protocol PatternView : View {
    associatedtype Pattern
    associatedtype V: View
    var viewList: [Pattern] { get }
    
    func ListingCell(pattern: Pattern) -> V
}

struct MainView: View {
    
    @ObservedObject var initialFetcher: InitialDataFetcher
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: BehavioralPatternsView()) {
                    MainNavigationCell(cellTitle: initialFetcher.getBehavioralPattern.name,
                                       cellBgColor: .pastelGreen,
                                       cellDescription: initialFetcher.getBehavioralPattern.description)
                        .padding()
                }
                NavigationLink(destination: EmptyView()) {
                    MainNavigationCell(cellTitle: initialFetcher.getStructurualPattern.name,
                                       cellBgColor: .pastelPink,
                                       cellDescription: initialFetcher.getStructurualPattern.description)
                        .padding()
                }
                NavigationLink(destination: CreationalPatternsView()) {
                    MainNavigationCell(cellTitle: initialFetcher.getCreationalPattern.name,
                                       cellBgColor: .pastelPurple,
                                       cellDescription: initialFetcher.getCreationalPattern.description)
                        .padding()
                }
            }
            .navigationTitle("Design Patterns")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(initialFetcher: InitialDataFetcher())
    }
}
