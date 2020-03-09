//
//  WeatherManager.swift
//  Clima
//
//  Created by Muzammil Muneer on 09/03/2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "api.openweathermap.org/data/2.5/weather?units=metric&appid=c01a81f76f3ff31e0f79767391c42f5"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
    }
}
