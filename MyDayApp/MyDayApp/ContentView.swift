//
//  ContentView.swift
//  MyDayApp
//
//  Created by Stuti Bhardwaj on 02/02/26.
//

import SwiftUI

struct ContentView: View {
    @State private var isSelected = 0
    @State private var message : String? = "new"
    var body: some View {
        VStack {
            TabView(selection: $isSelected){
                Tab("Today",systemImage: "calendar",value : 0){
                    Text("Today's Overview")
                }
                Tab("Tasks",systemImage: "list.bullet",value : 1){
                    TaskView()
                }
                Tab("Messages",systemImage: "message.fill",value : 2){
                    MessagesView()
                        
                }
                .badge(message.map{Text($0)})
                Tab("Profile",systemImage: "person.circle.fill",value : 3){
                    ProfileView()
                }
                
            }
            .onChange(of: isSelected){ oldValue,newValue in
                if newValue == 2{
                    message = nil
                }
            
                
            }
        }
    
    }
}

#Preview {
    ContentView()
}
