//
//  AppetizerModel.swift
//  Appetizers_SwiftUI
//
//  Created by Asif Khan on 8/2/23.
//

import Foundation

// MARK: - AppetizerModel
struct AppetizerModel: Codable {
    let request: [Request]
}

// MARK: - Request
struct Request: Codable {
    let price: Double
    let imageURL: String
    let carbs, calories, id: Int
    let name: String
    let protein: Int
    let description: String
}
