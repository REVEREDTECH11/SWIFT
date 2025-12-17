//
//  ContentView.swift
//  ScoreKeeper
//
//  Created by Greg Lamar Jr on 11/5/25.
//

import SwiftUI

struct ContentView: View {
    //@State private var players: [String] = ["Meesi", "Ronaldo", "Neymar"]
    //@State private var players: [String] = []
    //@State private var scores: [Int] = [0, 0, 0]
    //@State private var players: [Player] = [
    @State private var scoreboard = Scoreboard()
    var players: [Player] = []
        //Player(name: "Elisha", score: 0)
        //Player(name: "Naruto", score: 0),
        //Player(name: "Messi", score: 0),
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Score Keeper")
                .font(.largeTitle)
                .bold()
                .padding(.bottom)
        }
        Button("Add Player", systemImage: "plus") {
            scoreboard.players.append(Player(name: "", score: 0))
        }
        ScrollView {
            VStack {
                Grid{
                    /*ForEach(0..<players.count, id: \.description) { index in TextField("Name", text: $players[index])
                     Stepper("\(scores[index])", value:  $scores[index])
                     }*/
                    GridRow {
                        Text("PLAYER")
                            .gridColumnAlignment(.leading)
                        Text("GOALS")
                    }
                    .font(.headline)
                    ForEach($scoreboard.players) { $player in
                        GridRow{
                            TextField("Name", text: $player.name)
                            Text("\(player.score)")
                            //add greater than zero requirement
                            Stepper("\(player.score)", value: $player.score)
                                .labelsHidden()
                        }
                    }
                }
                .padding(.vertical)
                Spacer()
                
                switch scoreboard.state {
                case .setup:
                    Button("Start Game", systemImage: "play.fill") {
                        scoreboard.state = .playing
                    }
                case .playing:
                    Button("End Game", systemImage: "stop.fill") {
                        scoreboard.state = .gameOver
                        
                    }
                case .gameOver:
                    Button("Reset Game", systemImage: "arrow.counterclockwise") {
                        scoreboard.state = .setup
                    }
                }
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
//add save and load team sheets
