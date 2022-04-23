//
//  MainNavigationCell.swift
//  DesignPatterns
//
//  Created by Heecheon Park on 2/14/22.
//

import Foundation
import SwiftUI

struct MainNavigationCell: View {
    
    var cellTitle: String = ""
    var cellBgColor: Color = .clear
    var cellDescription: String = ""
    
    var body : some View {
        VStack(alignment: .leading) {
            Text(cellTitle)
                .font(.system(size: 25))
                .fontWeight(.bold)
                .padding()
            
            Spacer()

            Text(cellDescription)
                .multilineTextAlignment(.leading)
                .foregroundColor(Color.black)
                .padding()
            
        }
        .background(RoundedRectangle(cornerRadius: 15).fill(cellBgColor))
    }
}
