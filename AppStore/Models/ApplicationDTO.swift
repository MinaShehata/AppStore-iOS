//
//  ApplicationDTO.swift
//  AppStore-iOS
//
//  Created by Mina Shehata on 02/06/25.
//


import Foundation

public struct ApplicationDTO: Codable {
    var artistViewUrl: String?
    var kind: String?
    var screenshotUrls: [String]?
    var artworkUrl512:String?
    var averageUserRating: Double?
    var trackCensoredName: String?
    var trackViewUrl: String?
    var contentAdvisorRating: String?
    var isGameCenterEnabled: Bool
    //var
}
