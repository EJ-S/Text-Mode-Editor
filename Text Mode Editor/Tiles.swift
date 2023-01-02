//
//  Tiles.swift
//  Text Mode Editor
//
//  Created by Elijah Spicer on 1/2/23.
//

import SwiftUI

class Tiles: ObservableObject {
    
    @Published public var tileArr: [TileInfo]
    
    init(tileArrAdded: [TileInfo]) {
        self.tileArr = tileArrAdded
    }
}
