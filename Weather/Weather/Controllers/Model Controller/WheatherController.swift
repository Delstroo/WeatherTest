//
//  WheatherController.swift
//  Weather
//
//  Created by Delstun McCray on 2/25/22.
//

import CoreLocation
import Foundation

class WeatherManager {
    
    @available(iOS 15.0.0, *)
    func getCurrentWeather(lattitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws -> ResponseBody {
        guard let url = URL(string: "api.openweathermap.org/data/2.5/weather?lat=\(lattitude)&lon=\(longitude)&appid=\("fa6b34ed0d20f08c6402efe51c4b25bf")") else { fatalError("Missing URL")}
        
        
        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error fetching weather data ")}
        
        let decodedData = try JSONDecoder().decode(ResponseBody.self, from: data)
        
        return decodedData
    }
}
