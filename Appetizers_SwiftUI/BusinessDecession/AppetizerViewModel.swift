//
//  AppetizerViewModel.swift
//  Appetizers_SwiftUI
//
//  Created by Asif Khan on 8/2/23.
//

import Foundation

class AppetizerViewModel: ObservableObject {
    
    @Published var appetizerModel: AppetizerModel?
    
    func getAppetizers() {
        Task {
            do {
                let appetizerModel =  try await Networking.getAppetizersRequest()
                DispatchQueue.main.async {
                    self.appetizerModel = appetizerModel
                }
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}
