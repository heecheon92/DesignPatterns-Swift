//
//  StrategyPatternView.swift
//  DesignPatterns (iOS)
//
//  Created by Heecheon Park on 4/24/22.
//

import SwiftUI

struct StrategyPatternView: View {
    
    @StateObject var spvm = StrategyPatternViewModel()
    
    var body : some View {
        CodeView(json: $spvm.code)
    }
}

struct StrategyPatternView_Previews: PreviewProvider {
    static var previews: some View {
        StrategyPatternView()
    }
}
