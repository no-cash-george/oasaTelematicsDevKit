//
//  File.swift
//  oasaTelematicsDevKit
//
//  Created by George Papachristodoulou on 10/6/25.
//

import Foundation

public class LineManagement
{
    private static let baseURL = "http://telematics.oasa.gr/api/"
    
    public static func getDailySchedule(lineCode: String) async throws -> [RouteSchedule] {
        let urlString = "\(baseURL)?act=getDailySchedule&line_code=\(lineCode)"
        
        guard let url = URL(string: urlString) else {
            throw APIError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.setValue("Mozilla/5.0", forHTTPHeaderField: "User-Agent") // Bypass WAF
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        do {
            let schedule = try JSONDecoder().decode([RouteSchedule].self, from: data)
            return schedule
        } catch {
            throw error
        }
    }
    
    enum APIError: Error {
            case invalidURL
            case noData
        }
}
