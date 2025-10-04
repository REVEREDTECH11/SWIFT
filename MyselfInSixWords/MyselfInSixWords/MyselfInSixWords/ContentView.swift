//
//  ContentView.swift
//  MyselfInSixWords
//
//  Created by Greg Lamar Jr on 10/3/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Text("My Hobbies")
                .font(.largeTitle)
                .background(Color.red, in: RoundedRectangle(cornerRadius: 10))
            
            HStack {
                Text("Soccer")
                Text("Baseball")
                Text("Coding")
                Text("Cars")
            }
        }
        
        VStack {
            
            Text("Coding Languages")
                .font(.largeTitle)
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 10))
            
            HStack {
                Text("Swift")
                Text("JavaScript")
                Text("Java")
                Text("Python")
                Text("CSS")
                Text("HTML")
            }
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
