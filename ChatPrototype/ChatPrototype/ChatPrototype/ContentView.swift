//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Greg Lamar Jr on 09/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 25){
            Text("Hello, world!")
                .padding()
                .background(Color.red, in: RoundedRectangle(cornerRadius: 8))
                .shadow(color: .white, radius: 9)
                .font(.largeTitle)
            Text("Welcome to SwiftUI!")
                .padding()
                .background(Color.blue, in: RoundedRectangle(cornerRadius: 8))
                .shadow(color: .orange, radius: 9)
            
            Text("Name: Lamar, Greg")
                .padding()
                .background(Color.green, in: RoundedRectangle(cornerRadius: 8))
                .shadow(color: .teal, radius: 9)

        }

        .padding()
        .padding()
    }
}

#Preview {
    ContentView()
}
