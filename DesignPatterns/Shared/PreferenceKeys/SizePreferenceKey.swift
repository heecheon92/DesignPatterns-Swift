//
//  SizePreferenceKey.swift
//  DesignPatterns
//
//  Created by Heecheon Park on 2/14/22.
//

import Foundation
import Foundation
import SwiftUI

struct SizePreferenceKey: PreferenceKey {
    typealias Value = CGSize
    static var defaultValue: Value = .zero

    static func reduce(value: inout Value, nextValue: () -> Value) {
        value = nextValue()
    }
}
