//
//  WeatherManager.swift
//  Clima
//
//  Created by 🧔🏻Alikhan Batchaev on 01.02.2020.
//  Copyright © 2020 Alikhan Batchaev. All rights reserved.
//

import UIKit

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=1407ee8c86647be611b8ec34aeb7e187&&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        
        // Create a URL
        if let url = URL(string: urlString) {
            
            // Create a URLSession
            let session = URLSession(configuration: .default)
            
            // Give the session a task
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                if let safeData = data {
                    self.parsJSON(weatherData: safeData)
                }
            }
            
            // Start the task
            task.resume()
            
        }
    }
    
    func parsJSON(weatherData: Data) {
        let decoder = JSONDecoder()
        do {
            let decoderData = try decoder.decode(WeatherData.self, from: weatherData)
            print(decoderData.main.temp)
        } catch {
            print(error)
        }
    }
}
