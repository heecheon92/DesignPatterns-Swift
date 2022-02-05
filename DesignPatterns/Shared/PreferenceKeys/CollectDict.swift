//
//  CollectDict.swift
//  DesignPatterns (iOS)
//
//  Created by Heecheon Park on 2/5/22.
//

import Foundation
import SwiftUI

struct CollectDict<Key: Hashable, Value>: PreferenceKey {
    static var defaultValue: [Key:Value] { [:] }
    static func reduce(value: inout [Key:Value], nextValue: () -> [Key:Value]) {
        value.merge(nextValue(), uniquingKeysWith: { $1 })
    }
}
