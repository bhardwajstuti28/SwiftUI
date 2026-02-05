//
//  SearchView.swift
//  Appstore
//
//  Created by Stuti Bhardwaj on 02/02/26.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink("Featured Story"){
                    Text("Search")
                        .font(.largeTitle)
                    
                }
               
               
            }
            .navigationTitle("Search")
        }
    }
}

#Preview {
    SearchView()
}
