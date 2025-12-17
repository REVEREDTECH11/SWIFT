//
//  ContentView.swift
//  Pick-a-Pal
//
//  Created by Greg Lamar Jr on 10/29/25.
//
//Go back and add accents in the future
//Come back for address challenge
import SwiftUI

struct ContentView: View {
    //@State private var names: [String] = ["Messi", "Suarez", "Neymar", "Dembele", "Ter Stegen", "Umtiti", "Xavi", "Mascherano", "Pique", "Alba", "Alves"]
    @State private var names: [String] = []
    @State private var nameToAdd = ""
    @State private var pickedName = ""
    @State private var shouldRemovePickedName = false
    
    //@State Private var SaveList = []
    var body: some View {
        VStack {
            VStack(spacing: 8) {
                Image(systemName: "soccerball")
                    .foregroundStyle(.red)
                    .symbolEffect(.breathe.pulse.byLayer, options: .repeat(.continuous))
                Text("Pick-a-Mate")
            }
            .font(.title)
            // .bold()
            Text(pickedName.isEmpty ? " " : pickedName)
                .font(.title2)
                .bold()
                .foregroundStyle(.yellow)
            
            List{
                
                ForEach(names, id: \.description) { name in
                    Text(name)
                }
            }
            
            .clipShape(RoundedRectangle(cornerRadius: 9))
            TextField("Add Name", text: $nameToAdd)
                .autocorrectionDisabled()
                .onSubmit {
                    //Adds entered name to array to display in name list
                    if !nameToAdd.isEmpty {
                        if names.contains(nameToAdd) {
                            print("Name is present")
                        }else{
                            names.append(nameToAdd)
                            nameToAdd = ""
                        }
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
                    .padding(.horizontal, 8)
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        .padding()
        
        HStack {
            Button("Save List") {
                saveList()
            }
            .buttonStyle(.bordered)
            Button("Load List") {
                loadList()
            }
            .buttonStyle(.bordered)
        }
        .padding()
    }
    func saveList() {
        UserDefaults.standard.set(names, forKey: "SavedNames")
    }
    func loadList() {
        if let savedNames = UserDefaults.standard.array(forKey: "SavedNames") as? [String] {
            names = savedNames
        }
    }
}

#Preview {
    ContentView()
}
