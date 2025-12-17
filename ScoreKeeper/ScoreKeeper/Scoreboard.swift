//
//  Scoreboard.swift
//  ScoreKeeper
//
//  Created by Greg Lamar Jr on 11/5/25.
//
import Foundation

struct Scoreboard {

    var players: [Player] = [
        Player(name: "Elisha", score: 0),
    ]
    
    var state = GameState.setup
    
    mutating func resetScores(to newValue: Int) {
    }
}
