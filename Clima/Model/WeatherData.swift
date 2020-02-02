//
//  WeatherData.swift
//  Clima
//
//  Created by 🧔🏻Alikhan Batchaev on 02.02.2020.
//  Copyright © 2020 Alikhan Batchaev. All rights reserved.
//

import UIKit

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
    let feels_like: Double
}

struct Weather: Codable {
    let id: Int
    let description: String
    
}
