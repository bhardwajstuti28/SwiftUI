//
//  badgeView.swift
//  Appstore
//
//  Created by Stuti Bhardwaj on 02/02/26.
//

import SwiftUI

struct badgeView: View {
    @State private var unreadMessages = 2
    var body: some View {
        TabView{
            Tab("Home",systemImage: "house"){
                Text("Home Content")
            }
            Tab("Messages",systemImage: "message.fill"){
                Text("Messages Content")
            }
            Tab("Settings",systemImage: "gear"){
                Text("Settings Content")
            }
            .badge("New")
            
        }
    }
}

#Preview {
    badgeView()
}
