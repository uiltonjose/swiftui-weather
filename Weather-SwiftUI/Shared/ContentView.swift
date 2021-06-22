//
//  ContentView.swift
//  Shared
//
//  Created by Uilton Santos on 21/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("28°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 40)
                
                HStack(spacing: 20) {
//                    WeatherDayView(dayOfWeek: "SUN", imageName: "cloud.sun.fill", temperature: 28)
                    WeatherDayView(dayOfWeek: "MON", imageName: "cloud.sun.fill", temperature: 28)
                    WeatherDayView(dayOfWeek: "TUE", imageName: "sun.max.fill", temperature: 28)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 38)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: -2)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 28)
//                    WeatherDayView(dayOfWeek: "SAT", imageName: "snow", temperature: -20)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
