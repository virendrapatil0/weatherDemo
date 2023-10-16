//
//  Weatherdetail.swift
//  Weather APP
//
//  Created by Virendra Patil on 16/10/23.
//

import Foundation
import SwiftUI

struct WeatherDetailsView: View {
    var weatherData: WeatherData

    var body: some View {
        VStack {
            Text("City: \(weatherData.city)")
            Text("Temperature: \(weatherData.temperature)°C")
            Text("Description: \(weatherData.description)")
        }
    }
}
