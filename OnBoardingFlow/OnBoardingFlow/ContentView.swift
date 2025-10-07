//
//  ContentView.swift
//  OnBoardingFlow
//
//  Created by Greg Lamar Jr on 10/7/25.
//

import SwiftUI

let gradientColors: [Color] = [
    .gradientTop, .gradientBottom
]

struct ContentView: View {
    var body: some View {
        TabView{
            WelcomePage()
            FeaturesPage()
        }
        .background(Gradient(colors: gradientColors))
        .tabViewStyle(.page)
        .foregroundStyle(.white)
        
    }
}

#Preview {
    ContentView()
}
