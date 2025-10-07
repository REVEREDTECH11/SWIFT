//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Greg Lamar Jr on 10/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //Title
        HStack{Text("Weather Forecast")}
            .font(.title)
        VStack {
            
            //Properties
            DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
            DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
            DayForecast(day: "Wed", isRainy: true, high: 54, low: 45)
            

            
            
        }
        .padding()
    }
}

//preview app in viewer
#Preview {
    ContentView()
}

//extracted contect view section
struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        }else{
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        }else{
            return Color.yellow
        }
    }
    
    var body: some View {
        HStack{
            Text(day)
                .font(Font.largeTitle)
            Image(systemName: iconName)
                .font(Font.largeTitle)
                .foregroundStyle(iconColor)
            Text("High: \(high)")
                .fontWeight(.light)
                .font(Font.headline)
            Text("Low: \(low)")
                .fontWeight(.light)
                .font(Font.headline)
                .foregroundStyle(Color.secondary)

            
            
        }
        
    }
    
}
