//
//  FeatureCard.swift
//  OnBoardingFlow
//
//  Created by Greg Lamar Jr on 10/7/25.
//

import SwiftUI

struct FeatureCard: View {
    let iconName: String
    let description: String

    var body: some View {
        HStack {
            Image(systemName: iconName)
                .font(.largeTitle)
                .frame(width: 50)
                .padding(.trailing, 10)
            
            Text(description)
            //Spacer expands as far as possible to fill space
            Spacer()
                
        }
        .padding()
        .background{
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.red)
                .opacity(0.50)
                .brightness(-0.4)
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    FeatureCard(iconName: "soccerball", description: "Placeholder for a description")
}
