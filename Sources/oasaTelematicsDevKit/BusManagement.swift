//
//  File.swift
//  oasaTelematicsDevKit
//
//  Created by George Papachristodoulou on 10/6/25.
//

import Foundation

public class BusManagement
{
    private static let baseURL = "http://telematics.oasa.gr/api/"
    
    public static func getBusLocation(busCode: String) async throws -> [BusLocation] {
        let urlString = "\(baseURL)?act=getBusLocation&p1=\(busCode)"
        
        guard let url = URL(string: urlString) else {
            throw APIError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.setValue("Mozilla/5.0", forHTTPHeaderField: "User-Agent") // Bypass WAF
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        do {
            let arrivals = try JSONDecoder().decode([BusLocation].self, from: data)
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
