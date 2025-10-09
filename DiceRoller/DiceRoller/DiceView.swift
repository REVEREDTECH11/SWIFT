//
//  DiceView.swift
//  DiceRoller
//
//  Created by Greg Lamar Jr on 10/8/25.
//
import SwiftUI

struct DiceView: View {
    
    @State private var numberOfPips: Int = 1
    var body: some View {
        
        VStack {
            
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
                .frame(maxWidth: 50, maxHeight: 50)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.black, .white)
            Button("Roll") {
                withAnimation {
                    numberOfPips = Int.random(in: 1...6)
                    
                }
                
            }
            
            .buttonStyle(.bordered)
            .foregroundStyle(.red)
            .background(Color.black)
            .cornerRadius(10)
            
        }
        .padding()
        
    }
    
}

#Preview {
    DiceView()
    
}

