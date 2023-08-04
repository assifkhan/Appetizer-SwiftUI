//
//  ImageDownloader.swift
//  Appetizers_SwiftUI
//
//  Created by Asif Khan on 8/2/23.
//

import SwiftUI
struct ImageDownloader {
    
    static func getImage(imageURL: String) async throws -> UIImage? {
        guard let imageURL = URL(string: imageURL) else {
            throw NetworkError.invalidURL
        }
        
        let (data, _) = try await URLSession.shared.data(from: imageURL)
        return UIImage(data: data)
    }
}
