//
//  WeatherManager.swift
//  Clima
//
//  Created by Muzammil Muneer on 09/03/2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?units=metric&appid=c01a81f76f3ff31e0f79767391c42f59"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        
        if let url = URL(string: urlString){
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url, completionHandler: handler(data:response:error:))
            
            task.resume()
        }
    }
    
    func handler(data: Data?, response: URLResponse?, error: Error?) {
        if error != nil{
            print(error)
            return
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString)
        }
        
    }
}
