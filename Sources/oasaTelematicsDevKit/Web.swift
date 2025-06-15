//
//  File.swift
//  oasaTelematicsDevKit
//
//  Created by George Papachristodoulou on 15/6/25.
//

import Foundation

public class Web
{
    private static let baseURL = "http://telematics.oasa.gr/api/"
    
    public static func webGetLines() async throws -> [webLine]
    {
        let urlString = "\(baseURL)?act=webGetLines"
        
        guard let url = URL(string: urlString) else
        {
            throw APIError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.setValue("Mozilla/5.0", forHTTPHeaderField: "User-Agent")
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        do
        {
            let lines = try JSONDecoder().decode([webLine].self, from: data)
            return lines
        }catch
        {
            throw error
        }
    }
    
    public static func webGetLinesWithMLInfo() async throws -> [webLineMLInfo]//master line info ???
    {
        let urlString = "\(baseURL)?act=webGetLinesWithMLInfo"
        
        guard let url = URL(string: urlString) else
        {
            throw APIError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.setValue("Mozilla/5.0", forHTTPHeaderField: "User-Agent")
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        do
        {
            let linesWithMLInfo = try JSONDecoder().decode([webLineMLInfo].self, from: data)
            return linesWithMLInfo
        }catch
        {
            throw error
        }
    }
    
    public static func webGetRoutes(lineCode : String) async throws -> [webRoute]
    {
        let urlString = "\(baseURL)?act=webGetRoutes&p1=\(lineCode)"
        
        guard let url = URL(string: urlString) else
        {
            throw APIError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.setValue("Mozilla/5.0", forHTTPHeaderField: "User-Agent")
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        do
        {
            let routes = try JSONDecoder().decode([webRoute].self, from: data)
            return routes
        }catch
        {
            throw error
        }
    }
    
    public static func webGetStops(routeCode : String) async throws -> [webStop]
    {
        let urlString = "\(baseURL)?act=webGetStops&p1=\(routeCode)"
        
        guard let url = URL(string: urlString) else
        {
            throw APIError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.setValue( "Mozilla/5.0", forHTTPHeaderField: "User-Agent")
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        do
        {
            let stops = try JSONDecoder().decode([webStop].self, from: data)
            return stops
        }catch
        {
            throw error
        }
        
    }
    
    public static func webRouteDetails(routeCode : String) async throws -> [webRouteDetail]
    {
        let urlString = "\(baseURL)?act=webRouteDetails&p1=\(routeCode)"
        
        guard let url = URL(string: urlString) else
        {
            throw APIError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.setValue("Mozilla/5.0", forHTTPHeaderField: "User-Agent")
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        do
        {
            let routeDetails = try JSONDecoder().decode([webRouteDetail].self, from: data)
            return routeDetails
        }catch
        {
            throw error
        }
    }
    
    public static func webRoutesForStop(stopCode : String) async throws -> [webRoute]
    {
        let urlString = "\(baseURL)?act=webRoutesForStop&p1=\(stopCode)"
        
        guard let url = URL(string: urlString) else
        {
            throw APIError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.setValue("Mozilla/5.0", forHTTPHeaderField: "User-Agent")
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        do
        {
            let routesForStop = try JSONDecoder().decode([webRoute].self, from: data)
            return routesForStop
        }catch
        {
            throw error 
        }
    }
    
    enum APIError: Error {
        case invalidURL
        case noData
    }
}
