//
//  ImageView.swift
//  Appetizers_SwiftUI
//
//  Created by Asif Khan on 8/2/23.
//

import SwiftUI

struct ImageView: View {
    
    let urlString: String
    @State var uiImage: UIImage?
    
    var body: some View {
        VStack {
            if let uiImage = uiImage {
                Image(uiImage: uiImage)
                    .resizable()
            } else {
                Image("testImage")
                    .resizable()
            }
        }
        .onAppear {
            Task {
                do {
                    let image = try await ImageDownloader.getImage(imageURL: urlString)
                    self.uiImage = image
                } catch {
                    
                }
            }
        }
    }
}

struct ImageView_Preview: PreviewProvider {
    
    static var previews: some View {
        ImageView(urlString: "")
    }
}


