//
//  DetailsViewModel.swift
//  iOSCodeChallenge
//
//  Created by Daniela Ciciliano on 12/04/24.
//

import Foundation


class DetailsViewModel: ObservableObject {
    @Published var comentsPosts: [PostComents]?
    @Published var error: Error?
    
    let ApiClient2 = APIClient()
    
    func getDetails() {
        ApiClient2.getDetails { result in
            DispatchQueue.main.async {
                
                switch result {
                case .success(let coments):
                    self.comentsPosts = coments
                    print("results \(String(describing: self.comentsPosts))")
                case .failure(let error):
                    print("Error fetching post: \(error)")
                }
                
            }
        }
        
    }
}
