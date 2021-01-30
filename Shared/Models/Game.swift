//
//  Game.swift
//  Bullseye (iOS)
//
//  Created by Runyasak Chaengnaimuang on 29/1/2564 BE.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> Int {
        return 100 - abs(self.target - sliderValue)
    }
}
