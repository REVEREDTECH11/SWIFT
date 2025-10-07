//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Greg Lamar Jr on 10/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Add scroll view
        
        VStack {
            
            //Properties
            //DayForecast(month: "", dayNum: , day: "", isRainy: , high: , low: )

            DayForecast(month: "Oct", dayNum: 6, day: "Mon", isRainy: false, high: 70, low: 50)
            DayForecast(month: "Oct", dayNum: 7, day: "Tues", isRainy: false, high: 60, low: 40)
            DayForecast(month: "Oct", dayNum: 8, day: "Wed", isRainy: true, high: 54, low: 45)
            DayForecast(month: "Oct", dayNum: 9, day: "Thur", isRainy: false, high: 65, low: 55)
            DayForecast(month: "Oct", dayNum: 10, day: "Fri", isRainy: false, high:70, low: 58)
            DayForecast(month: "Oct", dayNum: 11, day: "Sat", isRainy: true, high:68, low: 53)
            DayForecast(month: "Oct", dayNum: 12, day: "Sun", isRainy: false, high:80, low: 70)//temperature exagerated to test high temp
            


            
            

            
            
        }
        .padding()
    }
}

//preview app in viewer
#Preview {
    ContentView()
}

//extracted content view section
struct DayForecast: View {
    let month: String
    let dayNum: Int
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
    
    var highTemp: Color{
        if high >= 80{
            return Color.red
        }else{
            return Color.white
        }
    }
    
    var lowTemp: Color{
        if low <= 60{
            return Color.teal
        }else{
            return Color.secondary
            
        }
    }
        
        
    var body: some View {
        HStack{
            Text(month)
                .font(Font.largeTitle)
            Text("\(dayNum)")
                .font(Font.largeTitle)
            Text(day)
                .font(Font.largeTitle)
            Image(systemName: iconName)
                .font(Font.largeTitle)
                .foregroundStyle(iconColor)
            Text("High: \(high)")
                .fontWeight(.light)
                .font(Font.headline)
                .foregroundStyle(highTemp)
            Text("Low: \(low)")
                .fontWeight(.light)
                .font(Font.headline)
                .foregroundStyle(lowTemp)
            }
            
        }
    }

