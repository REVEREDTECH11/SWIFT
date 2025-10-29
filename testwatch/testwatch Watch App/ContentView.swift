//
//  ContentView.swift
//  testwatch Watch App
//
//  Created by Greg Lamar Jr on 10/11/25.
//
import SwiftUI

struct ContentView: View {
    @State private var diceNumber = 1

    var body: some View {
        VStack(spacing: 20) {
            Text("🎲 Dice Roller")
                .font(.largeTitle)
                .fontWeight(.bold)

            Image(systemName: "die.face.\(diceNumber)")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()

            Button(action: rollDice) {
                Text("Roll Dice")
                    .font(.title2)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }

    func rollDice() {
        diceNumber = Int.random(in: 1...6)
    }
}



#Preview {
    ContentView()
}
