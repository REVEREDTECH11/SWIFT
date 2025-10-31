//
//  ContentView.swift
//  Pick-a-Pal
//
//  Created by Greg Lamar Jr on 10/29/25.
//

import SwiftUI

struct ContentView: View {
    @State private var names: [String] = ["Messi", "Suarez", "Neymar", "Dembele", "Ter Stegen"]
    @State private var nameToAdd = ""
    var body: some View {
        VStack {
            List{
                
                ForEach(names, id: \.description) { name in
                    Text(name)
                }
            }
            TextField("Add Name", text: $nameToAdd)
                .onSubmit {
                    //Adds entered name to array
                    if !nameToAdd.isEmpty {
                        names.append(nameToAdd)
                        nameToAdd = ""
                    }
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
