//
//  AppetizerDetailView.swift
//  Appetizers_SwiftUI
//
//  Created by Asif Khan on 8/4/23.
//


import SwiftUI

struct AppetizerDetailView: View {
    
    let request: Request
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ImageView(urlString: request.imageURL)
                    .frame(height: 400)
                    .cornerRadius(20)
                    .aspectRatio(contentMode: .fit)
                AppetizerContextView(request: request)
                    .padding()
                Spacer()
            }
        }
        .navigationTitle(request.name)
    }
}

struct AppetizerDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        AppetizerDetailView(request: .init(price: 0, imageURL: "", carbs: 1, calories: 2, id: 3, name: "Asif", protein: 4, description: "ABCD"))
    }
}
