//
//  FeaturesPage.swift
//  OnBoardingFlow
//
//  Created by Greg Lamar Jr on 10/7/25.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Features")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top)
            
            FeatureCard(iconName: "soccerball.inverse", description: "1-on-1 session")
            FeatureCard(iconName: "sportscourt", description: "Game analysis")
            FeatureCard(iconName: "eye", description: "AI Based Insights")
            Spacer()
        }
        .padding()
    }
}

#Preview {
    FeaturesPage()
        .frame(maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
    
}
