//
//  ExplanationView.swift
//  DesignPatterns (iOS)
//
//  Created by Heecheon Park on 4/24/22.
//

import SwiftUI

struct ExplanationView: View {
    
    @Environment (\.presentationMode) var presentationMode
    var pattern: AnyDesignPattern
    
    var body : some View {
        VStack {
            Text(pattern.description)
                .font(.system(size: 24))
                .fontWeight(.bold)
                .padding()
            
            if (pattern.description == "Strategy") {
                StrategyPatternView()
                    .frame(height: UIScreen.main.bounds.height * 0.3)
            }
            Spacer()
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
        .onTapGesture {
            presentationMode.wrappedValue.dismiss()
        }
    }
}
struct ExplanationView_Previews: PreviewProvider {
    static var previews: some View {
        ExplanationView(pattern: AnyDesignPattern(AnyBehavioralPattern(_Strategy())))
    }
}
