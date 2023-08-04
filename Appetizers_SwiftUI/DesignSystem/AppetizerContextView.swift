//
//  AppetizerContextView.swift
//  Appetizers_SwiftUI
//
//  Created by Asif Khan on 8/2/23.
//

import SwiftUI
struct AppetizerContextView: View {
    
    let request: Request
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Name: \(request.name)")
            Text(String(format: "Price: $%.2f", request.price))
            Text("Corbs: \(request.carbs)")
            Text("Calories: \(request.calories)")
            Text("Protein: \(request.protein)")
            Text("Detail: \(request.description)")
                .lineLimit(2)
        }
        .padding()
    }
}

struct AppetizerContextView_Previews: PreviewProvider {
    
    static var previews: some View {
        AppetizerContextView(request: .init(price: 0, imageURL: "", carbs: 1, calories: 2, id: 3, name: "Asif", protein: 4, description: "ABCD"))
    }
}
