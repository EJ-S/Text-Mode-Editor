//
//  TileColorData.swift
//  Text Mode Editor
//
//  Created by Elijah Spicer on 1/1/23.
//

public struct TileColorData {
    
    private var frontR = 255
    private var frontG = 255
    private var frontB = 255
    private var backR = 0
    private var backG = 0
    private var backB = 0
    
    
    init(fr: Int = 255, fg: Int = 255, fb: Int = 255,
         br: Int = 0, bg: Int = 0, bb: Int = 0 ) {
        self.frontR = fr
        self.frontB = fb
        self.frontG = fg
        self.backB = bb
        self.backG = bg
        self.backR = br
    }
    
}
