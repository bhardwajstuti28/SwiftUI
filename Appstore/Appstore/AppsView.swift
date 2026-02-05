//
//  AppsView.swift
//  Appstore
//
//  Created by Stuti Bhardwaj on 02/02/26.
//

import SwiftUI

struct AppsView: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink("Featured Story"){
                    Text("Apps")
                        .font(.largeTitle)
                    
                }
                
            }
            .navigationTitle("Apps")
        }

    }
}

#Preview {
    AppsView()
}
