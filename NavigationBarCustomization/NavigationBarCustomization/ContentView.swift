//
//  ContentView.swift
//  NavigationBarCustomization
//
//  Created by Stuti Bhardwaj on 29/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink{
                    DetailView(title : "Grocery")
                }
                label:{
                    Text("Buy Grocery")
                }
               
                Text("prepare lecture notes")
                Text("reply to emails")
            }
            .navigationTitle("Reminders")
            .navigationBarTitleDisplayMode(.large)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button{
                        
                    }label:{
                        Image(systemName: "sidebar.left")
                    }
                }
                ToolbarItem(placement:.topBarTrailing){
                    Button{
                        
                    }label : {
                        Image(systemName: "plus")
                    }
                    
                }
                ToolbarItemGroup(placement: .bottomBar){
                    Button{
                        
                    }label: {
                        Label("New reminder",systemImage: "plus.circle.fill")
                    }
                    Button{
                        
                    }label:{
                        Label("List",systemImage: "list.bullet")
                    }
                }
            }//end of toolbar
            
            .toolbarColorScheme(.none, for: .navigationBar)
            .toolbarVisibility(.visible, for: .navigationBar)
            .toolbarBackground(.blue, for: .navigationBar)
        }
    
        
    }
}
struct DetailView : View {
    let title  : String
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        List{
            Text(title)
        }
        .navigationTitle("Detail")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement : .topBarLeading){
                Button{
                    dismiss()
                }label:{
                    HStack{
                        Image(systemName: "chevron.left")
                        Text("Reminders")
                    }
                }
            }
        }
        
    }
}
#Preview {
    ContentView()
}
