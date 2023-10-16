//
//  Cityview.swift
//  Weather APP
//
//  Created by Virendra Patil on 16/10/23.
//
import Foundation
import SwiftUI

struct CityInputView: View {
    @Binding var city: String
    @Binding var showCityInputPage: Bool

    var body: some View {
        VStack {
            Text("Enter a City")
                .font(.title)
                .padding()

            TextField("City Name", text: $city)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button(action: {
                showCityInputPage = false
                // Fetch weather data based on the entered city
            }) {
                Text("Search")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
        .navigationTitle("Enter City")
    }
}

