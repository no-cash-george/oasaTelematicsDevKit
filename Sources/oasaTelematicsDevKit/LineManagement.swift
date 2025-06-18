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
    
    public static func getScheduleDaysMasterLine(lineCode : String) async throws -> [ScheduleDaysOfMasterline]
    {
        let urlString = "\(baseURL)act=getScheduleDaysMasterline&p1=\(lineCode)"
        
        guard let url = URL(string: urlString) else {
            throw APIError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.setValue("Mozilla/5.0", forHTTPHeaderField: "User-Agent") 
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        do
        {
            let scheduleDaysOfMasterline = try JSONDecoder().decode([ScheduleDaysOfMasterline].self, from: data)
            return scheduleDaysOfMasterline
        }catch
        {
            throw error
        }
    }
    
    public static func getLinesAndRoutesForMl(mlCode : String) async throws -> [MasterLineRoutesLines]
    {
        let urlString = "\(baseURL)?act=getLinesAndRoutesForMl&p1=\(mlCode)"
        
        guard let url = URL(string: urlString) else {
            throw APIError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.setValue("Mozilla/5.0", forHTTPHeaderField: "User-Agent")
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        do
        {
            let linesAndRoutesForML = try JSONDecoder().decode([MasterLineRoutesLines].self, from: data)
            return linesAndRoutesForML
        }catch
        {
            throw error
        }
    }
    
    public static func getRoutesForLine(lineCode : String) async throws -> [RouteForLine]
    {
        let urlString = "\(baseURL)?act=getRoutesForLine&p1=\(lineCode)"
        
        guard let url = URL(string: urlString) else {
            throw APIError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.setValue("Mozilla/5.0", forHTTPHeaderField: "User-Agent")
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        do
        {
            let routesForLine = try JSONDecoder().decode([RouteForLine].self, from: data)
            return routesForLine
        }catch
        {
            throw error
        }
    }
    
    public static func getMLName(mlCode : String) async throws -> MLName
    {
        let urlString = "\(baseURL)?act=getMLName&p1=\(mlCode)"
        
        guard let url = URL(string: urlString) else {
            throw APIError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.setValue("Mozilla/5.0", forHTTPHeaderField: "User-Agent")
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        do
        {
            let mlName = try JSONDecoder().decode(MLName.self, from: data)
            return mlName
        }catch
        {
            throw error
        }
    }
    
    public static func getLineName(linecode : String) async throws -> LineName
    {
        let urlString = "\(baseURL)?act=getLineName&p1=\(linecode)"
        
        guard let url = URL(string: urlString) else {
            throw APIError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.setValue("Mozilla/5.0", forHTTPHeaderField: "User-Agent")
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        do
        {
            let lineName = try JSONDecoder().decode(LineName.self, from: data)
            return lineName
        }catch
        {
            throw error
        }
    }
    
    public static func getRouteName(routeCode : String) async throws -> RouteName
    {
        let urlString = "\(baseURL)?act=getRouteName&p1=\(routeCode)"
        
        guard let url = URL(string: urlString) else {
            throw APIError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.setValue("Mozilla/5.0", forHTTPHeaderField: "User-Agent")
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        do
        {
            let routeName = try JSONDecoder().decode(RouteName.self, from: data)
            return routeName
        }catch
        {
            throw error
        }
    }
    
    public static func getSchedLines(mlCode : String, lineCode : String, sdcCode : String) async throws -> ScheduledLines
    {
        let urlString = "\(baseURL)?act=getSchedLines&p1=\(mlCode)&p2=\(sdcCode)&p3=\(lineCode)"
        
        guard let url = URL(string : urlString) else{
            throw APIError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.setValue("Mozilla/5.0", forHTTPHeaderField: "User-Agent")
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        do
        {
            let schedLines = try JSONDecoder().decode(ScheduledLines.self, from: data)
            return schedLines
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
