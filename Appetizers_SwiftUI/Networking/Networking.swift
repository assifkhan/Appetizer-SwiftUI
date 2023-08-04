//
//  Networking.swift
//  Appetizers_SwiftUI
//
//  Created by Asif Khan on 8/2/23.
//

import Foundation

struct Networking {
    
    static func getAppetizersRequest() async throws -> AppetizerModel {
        guard let url = URL(string: "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/appetizers") else {
            throw NetworkError.invalidURL
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode(AppetizerModel.self, from: data)
    }
}
