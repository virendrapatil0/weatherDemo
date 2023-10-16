//
//  Weathermodel.swift
//  Weather APP
//
//  Created by Virendra Patil on 15/10/23.
//

import Foundation

struct WeatherData: Codable {
    let main: Main
    let weather: [Weather]
    let city: String
    let temperature: Double
    let description: String
}

struct Main: Codable {
    let temp: Double
    let humidity: Int
}

struct Weather: Codable {
    let description: String
}
