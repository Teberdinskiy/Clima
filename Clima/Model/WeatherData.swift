//
//  WeatherData.swift
//  Clima
//
//  Created by 🧔🏻Alikhan Batchaev on 02.02.2020.
//  Copyright © 2020 Alikhan Batchaev. All rights reserved.
//

import UIKit

struct WeatherData: Decodable {
    let name: String
    let main: Main
}

struct Main: Decodable {
    let temp: Double
}
