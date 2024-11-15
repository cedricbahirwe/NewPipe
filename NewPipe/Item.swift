//
//  Item.swift
//  NewPipe
//
//  Created by Cédric Bahirwe on 16/11/2024.
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
