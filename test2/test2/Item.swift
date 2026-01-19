//
//  Item.swift
//  test2
//
//  Created by Stuti Bhardwaj on 19/01/26.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
