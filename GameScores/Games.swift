//
//  Games.swift
//  GameScores
//
//  Created by Allan Evans on 6/18/15.
//  Copyright (c) 2015 Aelyssum Corp. All rights reserved.
//

import UIKit

class Game: NSObject {
    
    var homeTeam: String = ""
    var visitingTeam: String = ""
    var homeScore: Int = 0
    var visitingScore: Int = 0

    func timeRemaining() -> String {
        return ""
    }
   
}

class BaseballGame: Game {
    var inning: Int = 1
    var isTop: Bool = true
    var outs: Int = 0
    var strikes: Int = 0
    var balls: Int = 0
    
    override func timeRemaining() -> String {
        if isTop {
            return "Top of \(inning), \(outs) Outs, count \(balls) Balls \(strikes) Strikes"
        } else {
            return "Bottom of \(inning), \(outs) Outs, count \(balls) Balls \(strikes) Strikes"
        }
    }
}

class BasketballGame: Game {
    var period: Int = 1
    var minutes: Int = 12
    var seconds: Int = 0

    override func timeRemaining() -> String {
        return "Period \(period), \(minutes):\(seconds) remaining"
    }
}


