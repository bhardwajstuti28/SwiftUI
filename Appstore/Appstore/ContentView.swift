//
//  ContentView.swift
//  Appstore
//
//  Created by Stuti Bhardwaj on 02/02/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView{
                Tab("Today",systemImage: "doc.text.fill"){
                    TodayView()
                }
                Tab("Games",systemImage: "gamecontroller.fill"){
                    GamesView()
                }
                Tab("Apps",systemImage: "person.crop.rectangle.stack"){
                    AppsView()
                }
                Tab("Search",systemImage: "magnifyingglass"){
                    SearchView()
                }
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
