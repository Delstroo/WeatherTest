//
//  Weather.swift
//  Weather
//
//  Created by Delstun McCray on 2/25/22.
//

import Foundation

struct ResponseBody: Decodable {
    var coord: CoordinatesResposne
    var weather: [WeatherResponse]
    var main: MainResponse
    var name: String
    var wind: WindResponse
    
    struct CoordinatesResposne: Decodable {
        var lon: Double
        var lat: Double
        
    }// End of struct
    
    struct WeatherResponse: Decodable {
        var id: Double
        var main: String
        var description: String
        var icon: String
        
    }// End of struct
    
    struct MainResponse: Decodable {
        var temp: Double
        var feels_like: Double
        var temp_min: Double
        var temp_max: Double
        var pressure: Double
        var humidity: Double
        
    }// End of struct
    
    struct WindResponse: Decodable {
        var speed: Double
        var deg: Double
    
    }// End of struct
    
    
}// End of struct
