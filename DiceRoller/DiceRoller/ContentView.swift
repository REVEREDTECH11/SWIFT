//
//  ContentView.swift
//  DiceRoller
//
//  Created by Greg Lamar Jr on 10/8/25.
//
import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    var body: some View {
        VStack {
            
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
                .foregroundStyle(.red)
            
            
            
            HStack {
                
                ForEach(1...numberOfDice, id: \.description) { _ in
                    DiceView()
                }
            }
            HStack {
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    withAnimation{
                        numberOfDice -= 1
                    }
                }
                .disabled(numberOfDice == 1)
                
                Button("Add Dice", systemImage: "plus.circle.fill") {
                    withAnimation{
                        numberOfDice += 1
                    }
                }
                .disabled(numberOfDice == 4)
            }
            .labelStyle(.iconOnly)
            .font(.title)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.yellow)
    }
    
}

#Preview{
    ContentView()
    
}
