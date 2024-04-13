//
//  APIClientComents.swift
//  iOSCodeChallenge
//
//  Created by Daniela Ciciliano on 12/04/24.
//

import Foundation


class APIClientDetail {
    
    func getDetails(completion: @escaping (Result<Detail, Error>) -> Void) {
        
        var request = URLRequest(url: URL(string: "http://jsonplaceholder.typicode.com/comments")!,timeoutInterval: Double.infinity)
        request.httpMethod = "GET"
        
        let _: Void = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                if let error = error {
                    print("Error: \(error)")
                } else {
                    print("No data received")
                }
                return
            }
            
            print(String(data: data, encoding: .utf8)!)
            
            
            do {
                
                let result = try JSONDecoder().decode(Detail.self, from: data)
                completion(.success(result))
            } catch {
                print("Error decoding JSON:\(error)")
                completion(.failure(error))
            }
        }.resume()
        
    }
}

