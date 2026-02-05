//
//  GamesView.swift
//  Appstore
//
//  Created by Stuti Bhardwaj on 02/02/26.
//

import SwiftUI

struct GamesView: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink("Featured Story"){
                    Text("Today")
                        .font(.largeTitle)
                    
                }
                
               
            }
            .navigationTitle("Games")
        }
    }
}

#Preview {
    GamesView()
}
