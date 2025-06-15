//
//  File.swift
//  oasaTelematicsDevKit
//
//  Created by George Papachristodoulou on 10/6/25.
//

import Foundation

public struct StopArrivals : Codable
{
    public var routeCode : String
    public var vehicleCode : String
    public var arrivalTime : String
    
    enum CodingKeys : String, CodingKey
    {
        case routeCode = "route_code"
        case vehicleCode = "veh_code"
        case arrivalTime = "btime2"
    }
}

public struct BusLocation : Codable
{
    public var vehicleNumber : String
    public var lastUpdate : String
    public var latitude : String
    public var longitude : String
    public var routeCode : String
    
    enum CodingKeys : String, CodingKey
    {
        case vehicleNumber = "VEH_NO"
        case lastUpdate = "CS_DATE"
        case latitude = "CS_LAT"
        case longitude = "CS_LNG"
        case routeCode = "ROUTE_CODE"
    }
}

public struct Arrival: Codable {
    public let lineID: String
    public let sddCode: String
    public let sdcCode: String
    public let sdsCode: String
    public let sddAA: String
    public let sddLine1: String?
    public let sddKP1: String
    public let sddStart1: String?
    public let sdeStart1: String?
    public let sdeEnd1: String?
    public let sddLine2: String
    public let sddKP2: String
    public let sdeStart2: String?
    public let sdeEnd2: String?
    public let sddSort: String
    public let lineCircle: String
    public let lineDescr: String
    public let lineDescrEng: String
    public let remarks: String?

    private enum CodingKeys: String, CodingKey {
        case lineID = "line_id"
        case sddCode = "sdd_code"
        case sdcCode = "sdc_code"
        case sdsCode = "sds_code"
        case sddAA = "sdd_aa"
        case sddLine1 = "sdd_line1"
        case sddKP1 = "sdd_kp1"
        case sddStart1 = "sdd_start1"
        case sdeStart1 = "sde_start1"
        case sdeEnd1 = "sde_end1"
        case sddLine2 = "sdd_line2"
        case sddKP2 = "sdd_kp2"
        case sdeStart2 = "sde_start2"
        case sdeEnd2 = "sde_end2"
        case sddSort = "sdd_sort"
        case lineCircle = "line_circle"
        case lineDescr = "line_descr"
        case lineDescrEng = "line_descr_eng"
        case remarks
    }
}

public struct RouteSchedule: Codable {
    public let come: [Arrival]
    public let go: [Arrival]
}

public struct ScheduleDaysOfMasterline: Codable
{
    public var description : String
    public var descriptionEng : String
    public var code : String
    public var unknown : String?
    
    enum CodingKeys : String, CodingKey
    {
        case description = "sdc_descr"
        case descriptionEng = "sdc_descr_eng"
        case code = "sdc_code"
        case unknown = ""
    }
}

public struct MasterLineRoutesLines : Codable
{
    public var start : String
    public var startEng : String
    public var lineCode : String
    public var lineDescr : String
    public var lineDescrEng : String
    public var lineID : String
    public var lineIDGr : String
    public var sdcCode : String
    public var endDestination : String
    public var endDestinationEng : String
    
    enum CodingKeys: String, CodingKey {
        case start = "afetiria"
        case startEng = "afetiria_en"
        case lineCode = "line_code"
        case lineDescr = "line_descr"
        case lineDescrEng = "line_descr_eng"
        case lineID = "line_id"
        case lineIDGr = "line_id_gr"
        case sdcCode = "sdc_code"
        case endDestination = "terma"
        case endDestinationEng = "terma_en"
    }
    
}

public struct RouteForLine : Codable
{
    public var routeCode : String
    public var routeID : String
    public var routeDescr : String
    public var routeActive : String
    public var routeDescrEng : String
    
    enum CodingKeys : String, CodingKey
    {
        case routeCode = "route_code"
        case routeID = "route_id"
        case routeDescr = "route_descr"
        case routeActive = "route_active"
        case routeDescrEng = "route_descr_eng"
    }
}

public struct MLName : Codable
{
    public var name : String
    public var nameEng : String
    
    enum CodingKeys : String, CodingKey
    {
        case name = "name"
        case nameEng = "name_en"
    }
}

public struct webLine : Codable
{
    public var lineCode : String
    public var lineID : String
    public var lineDescr : String
    public var lineDescrEng : String
    
    enum CodingKeys: String, CodingKey {
        case lineCode = "LineCode"
        case lineID = "LineID"
        case lineDescr = "LineDescr"
        case lineDescrEng = "LineDescrEng"
    }
}

public struct webLineMLInfo : Codable
{
    public var mlCode : String //Identifier που έχει να κάνει με την περιοχή έναρξης. (Help needed) Πιθανότατα το ml αντιστοιχεί στο MasterLine.
    public var sdcCode : String // Identifier για το ωράριο που ακολουθεί η γραμμή, δες getSchedLines και getScheduleDaysMasterLine. Τι στον πουτσο ΟΑΣΑ
    public var lineCode : String
    public var lineID : String
    public var lineDescr : String
    public var lineDescrEng : String
    
    enum CodingKeys : String, CodingKey {
        case mlCode = "ml_code"
        case sdcCode = "sdc_code"
        case lineCode = "line_code"
        case lineID = "line_id"
        case lineDescr = "line_descr"
        case lineDescrEng = "line_descr_eng"
    }
}

public struct webRoute : Codable
{
    public var routeCode : String
    public var lineCode : String
    public var routeDescription : String
    public var routeDescriptionEng : String
    public var routeType : String
    public var routeDistance : String
    
    enum CodingKeys : String, CodingKey {
        case routeCode = "RouteCode"
        case lineCode = "LineCode"
        case routeDescription = "RouteDescr"
        case routeDescriptionEng = "RouteDescrEng"
        case routeType = "RouteType"
        case routeDistance = "RouteDistance"
    }
}

public struct webStop : Codable
{
    public var stopCode : String
    public var stopID : String
    public var stopDescr : String
    public var stopDescrEng : String
    public var stopStreet : String?
    public var stopStreetEng : String?
    public var stopHeading : String
    public var stopLat : String
    public var stopLng : String
    public var routeStopOrder : String
    public var stopType : String
    public var stopAmeA : String
    
    enum CodingKeys : String, CodingKey {
        case stopCode = "StopCode"
        case stopID = "StopID"
        case stopDescr = "StopDescr"
        case stopDescrEng = "StopDescrEng"
        case stopStreet = "StopStreet"
        case stopStreetEng = "StopStreetEng"
        case stopHeading = "StopHeading"
        case stopLat = "StopLat"
        case stopLng = "StopLng"
        case routeStopOrder = "RouteStopOrder"
        case stopType = "StopType"
        case stopAmeA = "StopAmea"
    }
}

public struct webRouteDetail : Codable
{
    public var locationX : String
    public var locationY : String
    public var routeOrder : String
    
    enum CodingKeys : String, CodingKey {
        case locationX = "routed_x"
        case locationY = "routed_y"
        case routeOrder = "routed_order"
    }
}

public struct webRouteForStop : Codable
{
    public var routeCode : String
    public var lineCode : String
    public var routeDescr : String
    public var routeDescrEng : String
    public var routeType : String
    public var routeDistance : String
    public var lineID : String
    public var lineDescr : String
    public var lineDescrEng : String
    public var masterLineCode : String
    
    enum CodingKeys : String, CodingKey {
        case routeCode = "RouteCode"
        case lineCode = "LineCode"
        case routeDescr = "RouteDescr"
        case routeDescrEng = "RouteDescrEng"
        case routeType = "RouteType"
        case routeDistance = "RouteDistance"
        case lineID = "LineID"
        case lineDescr = "LineDescr"
        case lineDescrEng = "LineDescrEng"
        case masterLineCode = "MasterLineCode"
    }
}

public struct webMasterLine : Codable
{
    public var code : String
    public var descr : String
    public var descrEng : String?
    public var id : String
    public var sdcCode : String
    public var lineCode : String
    public var isComplex : String
    
    enum CodingKeys : String, CodingKey
    {
        case code = "ml_code"
        case descr = "ml_descr"
        case descrEng = "ml_descr_eng"
        case id = "ml_id"
        case sdcCode = "sdc_code"
        case lineCode = "line_code"
        case isComplex = "is_complex"
    }
}
