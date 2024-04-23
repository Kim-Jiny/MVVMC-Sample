//
//  WheatherModel.swift
//  SampleProject
//
//  Created by 김미진 on 4/23/24.
//

import Foundation
struct WeatherInfo: Codable {
    let lat: Double
    let lon: Double
    var timezone: String
    let timezone_offset: Int
    let current: CurrentWeatherInfo
    let hourly: [HourlyWeatherInfo]
    let daily: [DailyWeatherInfo]
}

struct CurrentWeatherInfo: Codable {
    let dt: Int
    let sunrise: Int
    let sunset: Int
    let temp: Double
    let pressure: Int
    let humidity: Int
    let visibility: Int
    let wind_deg: Int
    let uvi: Double
    let wind_speed: Double
    let feels_like: Double
    let rain: Rain?
    let snow: Snow?
    let weather: [TitleWeatherInfo]
}

struct DailyWeatherInfo: Codable {
    let dt: Int
    let sunrise: Int
    let sunset: Int
    let temp: DailyTemp
    let weather: [TitleWeatherInfo]
}

struct HourlyWeatherInfo: Codable {
    let dt: Int
    let temp: Double
    let weather: [TitleWeatherInfo]
}

struct TitleWeatherInfo: Codable {
    let description: String
    let icon: String
}

struct DailyTemp: Codable {
    let max: Double
    let min: Double
}

struct Rain: Codable {
    let lastHour: Double
    
    private enum CodingKeys: String, CodingKey {
        case lastHour = "1h"
    }
}

struct Snow: Codable {
    let lastHour: Double
    
    private enum CodingKeys: String, CodingKey {
        case lastHour = "1h"
    }
}
