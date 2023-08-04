//
//  ContentView.swift
//  Appetizers_SwiftUI
//
//  Created by Asif Khan on 8/2/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject  var appetizerViewModel = AppetizerViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(appetizerViewModel.appetizerModel?.request ?? [], id:\.id) { item in
                    NavigationLink(destination: AppetizerDetailView(request: item)) {
                        AppetizerRowView(request: item)
                    }
                }
            }
            .navigationTitle("Appetizers")
        }
        .onAppear {
            appetizerViewModel.getAppetizers()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
