//
//  DetailsModel.swift
//  iOSCodeChallenge
//
//  Created by Daniela Ciciliano on 12/04/24.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let details = try? JSONDecoder().decode(Details.self, from: jsonData)

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

//typealias Details = [Detail]
