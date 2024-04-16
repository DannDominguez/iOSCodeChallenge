//
//  MockTitleListVM.swift
//  iOSCodeChallenge
//
//  Created by Daniela Ciciliano on 15/04/24.
//

import Foundation
@testable import iOSCodeChallenge

class MockTitleListViewModel: PostsProtocol {
    var postsTitle: [iOSCodeChallenge.Post]?

    
    func getPosts() {
        postsTitle = [Post(userID: 1, id: 1, title: "sunt aut facere repellat provident occaecati excepturi optio reprehenderit", body: "")]
    
    }
}
