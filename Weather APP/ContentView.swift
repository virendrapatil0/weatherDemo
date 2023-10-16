//
//  ContentView.swift
//  Weather APP
//
//  Created by Virendra Patil on 15/10/23.
//

import SwiftUI


struct ContentView: View {
    @State private var city: String = ""
    @State private var weatherData: WeatherData?
    @State private var showCityInputPage: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Weather App")
                    .font(.title)
                    .padding()

                Button(action: {
                    fetchWeatherByLocation()
                }) {
                    Text("Get My Location")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()

                NavigationLink(destination: CityInputView(city: $city, showCityInputPage: $showCityInputPage), isActive: $showCityInputPage) {
                    EmptyView()
                }

                Button(action: {
                    showCityInputPage = true
                }) {
                    Text("Enter a City")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()

                if let weatherData = weatherData {
                    WeatherDetailsView(weatherData: weatherData)
                }
            }
            .navigationTitle("Weather App")
        }
    }

    func fetchWeatherByLocation() {
        // Fetch weather data based on user's location (use Core Location framework)
        // Populate weatherData with the fetched data
    }
}


