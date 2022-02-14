//
//  CommonExtension.swift
//  DesignPatterns (iOS)
//
//  Created by Heecheon Park on 2/14/22.
//

import Foundation
import SwiftUI

extension Color {
    
    static var pastelPurple : Color = Color(hex: 0xA79AFF)
    static var pastelGreen  : Color = Color(hex: 0xAFF8DB)
    static var pastelPink   : Color = Color(hex: 0xFFCCF9)
    
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}
