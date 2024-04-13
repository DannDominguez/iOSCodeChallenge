//
//  DetailsPosts.swift
//  iOSCodeChallenge
//
//  Created by Daniela Ciciliano on 12/04/24.
//


import Foundation

// MARK: - Post
struct Post: Codable {
    let userID: Int
    let id: Int
    var title: String
    let body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}


