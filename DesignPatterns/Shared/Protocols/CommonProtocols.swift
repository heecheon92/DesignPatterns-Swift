//
//  CommonProtocols.swift
//  DesignPatterns (iOS)
//
//  Created by Heecheon Park on 4/24/22.
//

import Foundation
import SwiftUI

public protocol PatternView : View {
    associatedtype Pattern
    var viewList: [Pattern] { get }
}
