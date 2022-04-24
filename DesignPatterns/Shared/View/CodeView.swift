//
//  CodeView.swift
//  DesignPatterns
//
//  Created by Heecheon Park on 2/6/22.
//

import SwiftUI
import CodeViewer

struct CodeView: View {
    @Binding public var json : String
    
    var body: some View {
        VStack {
            CodeViewer(
                content: $json,
                mode: .swift,
                darkTheme: .xcode,
                lightTheme: .xcode,
                fontSize: 13
            ) { text in
                print("new text: \(text)")
            }
            
            Button(action: { print(json)} ) {
                Label("Json", systemImage: "pencil")
            }
        }
    }
}

struct CodeView_Previews: PreviewProvider {
    static var previews: some View {
        CodeView(json: .constant(""))
    }
}
