//
//  ContentView.swift
//  SheetsAndAlerts
//
//  Created by Stuti Bhardwaj on 30/01/26.
//

import SwiftUI

struct ContentView: View {
    @State private var showSheet = false
    var body: some View {
        VStack(spacing : 20){
            Text("Home Screen")
                .font(.largeTitle)
            
            Button("Show Details"){
                showSheet = true
            }
            .font(.title)
        }
        .sheet(isPresented: $showSheet){
            DetailView()
        }
    }
}

#Preview {
    ContentView()
}
