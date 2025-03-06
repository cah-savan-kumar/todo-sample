//
//  Item.swift
//  MyToDoApp
//
//  Created by Savan Kumar on 07/03/25.
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
