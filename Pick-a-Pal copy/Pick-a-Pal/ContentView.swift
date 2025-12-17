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
    @State private var pickedName = ""
    @State private var shouldRemovePickedName = false
    var body: some View {
        VStack {
            VStack(spacing: 8) {
                Image(systemName: "soccerball")
                    .foregroundStyle(.tint)
                 //.symbolEffect(.breathe.pulse.byLayer, //options: .repeat(.continuous))
                Text("Pick-a-Mate")
            }
            .font(.title)
           // .bold()
            Text(pickedName.isEmpty ? " " : pickedName)
                .font(.title2)
                .bold()
                .foregroundStyle(.tint)
            
            List{
                
                ForEach(names, id: \.description) { name in
                    Text(name)
                }
            }
            TextField("Add Name", text: $nameToAdd)
                .autocorrectionDisabled()
                .onSubmit {
                    //Adds entered name to array to display in name list
                    if !nameToAdd.isEmpty {
                        names.append(nameToAdd)
                        nameToAdd = ""
                    }
                }
                //.padding()
            //Visually seperate the text field and the button
            Divider()
            
            Toggle("Remove when picked", isOn: $shouldRemovePickedName)
            
            Button {
                if let randomName = names.randomElement() {
                    pickedName = randomName
                    if shouldRemovePickedName {
                        names.removeAll { name in return (name == randomName)
                        }
                    }
                } else {
                    pickedName = ""
                }
            }label: {
                Text("Pick Random Name")
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
