//
//  WeatherInfo.swift
//  CurrentWeatherApp
//
//  Created by Ivan Ramirez on 2/3/22.
//

import Foundation

struct WeatherInfo: Decodable {

    var coord: Coord
    var name: String
    var main: Main
}

struct Coord: Decodable {
    var lon: Double
    var lat: Double
}

struct Main: Decodable {
    var temp: Double
    var tempMin: Double
    var tempMax: Double
    
    enum CodingKeys: String, CodingKey {
        case tempMin = "temp_min"
        case tempMax = "temp_max"
        case temp = "temp"
    }
}


