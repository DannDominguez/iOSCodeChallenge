//
//  TitleListViewModel.swift
//  iOSCodeChallengeTests
//
//  Created by Daniela Ciciliano on 15/04/24.
//

import XCTest
@testable import iOSCodeChallenge

final class TitleListViewModelTests: XCTestCase {
    
    func testgetPosts() {
        
        let viewModel: PostsProtocol = MockTitleListViewModel() 
        
        viewModel.getPosts()
        
        let posts = viewModel.postsTitle
        
        
        XCTAssertNotNil(posts)
        XCTAssertEqual("sunt aut facere repellat provident occaecati excepturi optio reprehenderit", posts?.first?.title)
    }
}
