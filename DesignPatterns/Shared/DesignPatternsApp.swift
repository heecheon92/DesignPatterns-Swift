//
//  DesignPatternsApp.swift
//  Shared
//
//  Created by Heecheon Park on 2/5/22.
//

import SwiftUI

@main
struct DesignPatternsApp: App {
    
    internal var networkMonitor = Network.shared
    
    init() {
        networkMonitor.updateNetworkStatus()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.light)
        }
        
    }
}
