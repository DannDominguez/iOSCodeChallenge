//
//  DetailsModel.swift
//  iOSCodeChallenge
//
//  Created by Daniela Ciciliano on 12/04/24.
//


import Foundation

// MARK: - Detail
struct PostComents: Codable {
    let postID: Int
    let id: Int
    let name: String
    let email: String
    let body: String

    enum CodingKeys: String, CodingKey {
        case postID = "postId"
        case id, name, email, body
    }
}

