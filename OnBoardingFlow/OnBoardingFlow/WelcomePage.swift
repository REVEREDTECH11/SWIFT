//
//  WelcomePage.swift
//  OnBoardingFlow
//
//  Created by Greg Lamar Jr on 10/7/25.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
          //  WelcomePage()
            ZStack{
                
                
                RoundedRectangle(cornerRadius: 30)
                    .padding(.top)
                    .frame(width: 150, height: 150)
                    //Image(system: soccerball)
                    .foregroundStyle(.tint)
                
                Image(systemName: "soccerball")
                    .font(.system(size: 70))
                    //.font(.largeTitle)
                    .padding(.top)
                    .foregroundStyle(.white)
            }
                Text("Welcome")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(Color.red)
                .padding(.top)
                //.padding(.bottom)
                .padding(.leading)
                .padding(.trailing)
                //.border(.black, width: 1.5)
            
                Text("To The Soccer App")
                    .multilineTextAlignment(.center)
                    .font(.title2)
                    //.border(.black, width: 1.5)
            }
       // .border(Color.black, width: 1.5)
        .padding()
        //.border(Color.black, width: 1.5)

        
        }
    }


#Preview {
    WelcomePage()
}
