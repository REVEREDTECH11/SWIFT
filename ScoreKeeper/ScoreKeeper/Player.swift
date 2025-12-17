//
//  Player.swift
//  ScoreKeeper
//
//  Created by Greg Lamar Jr on 11/5/25.
//
import Foundation

struct Player: Identifiable {
    let id = UUID()
    var name: String
    var score: Int
}
