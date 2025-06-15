//
//  File.swift
//  oasaTelematicsDevKit
//
//  Created by George Papachristodoulou on 10/6/25.
//

import Foundation

public class StopManagement
 {
    private static let baseURL = "http://telematics.oasa.gr/api/"
    
    public static func getStopArrivals(stopCode: String) async throws -> [StopArrivals] {
        let urlString = "\(baseURL)?act=getStopArrivals&p1=\(stopCode)"
        
        guard let url = URL(string: urlString) else {
            throw APIError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.setValue("Mozilla/5.0", forHTTPHeaderField: "User-Agent") // Bypass WAF
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        do {
            let arrivals = try JSONDecoder().decode([StopArrivals].self, from: data)
            return arrivals
        } catch {
            throw error
        }
    }

    enum APIError: Error {
        case invalidURL
        case noData
    }
}
