//
//  AppetizerRowView.swift
//  Appetizers_SwiftUI
//
//  Created by Asif Khan on 8/2/23.
//

import SwiftUI

struct AppetizerRowView: View {
    
    let request: Request
    var body: some View {
        HStack {
            ImageView(urlString: request.imageURL)
                .frame(width: 120, height: 120)
                .cornerRadius(20)
                .aspectRatio(contentMode: .fill)
            AppetizerContextView(request: request)
        }
    }
}

struct AppetizerRowView_Previews: PreviewProvider {
    
    static var previews: some View {
        AppetizerRowView(request: .init(price: 0, imageURL: "", carbs: 1, calories: 2, id: 3, name: "", protein: 4, description: ""))
    }
}
