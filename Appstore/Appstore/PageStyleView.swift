//
//  PageStyleView.swift
//  Appstore
//
//  Created by Stuti Bhardwaj on 02/02/26.
//

import SwiftUI

struct PageStyleView: View {
    var body: some View {
        TabView{
            Tab("More",systemImage: "ellipsis") {
                Text("Welcome to Page 1")
                    .font(.title.bold())
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
                    .background(Color.green.opacity(0.5))
            }
            Tab("More",systemImage: "ellipsis") {
                Text("Welcome to Page 2")
                    .font(.title.bold())
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
                    .background(Color.red.opacity(0.5))
            }

            Tab("yellow",systemImage: "ellipsis") {
                Text("Welcome to Page 3")
                    .font(.title.bold())
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
                    .background(Color.yellow.opacity(0.5))
            }
            Tab("More",systemImage: "ellipsis") {
                Text("Welcome to Page 3")
                    .font(.title.bold())
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
                    .background(Color.purple.opacity(0.5))
            }
            Tab("More",systemImage: "magnifyingglass") {
                Text("Welcome to Page 3")
                    .font(.title.bold())
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
                    .background(Color.blue.opacity(0.5))
            }
            

        }
        //.tabViewStyle(.page)
        .ignoresSafeArea()
    }
}

#Preview {
    PageStyleView()
}
