//
//  TodayView.swift
//  Appstore
//
//  Created by Stuti Bhardwaj on 02/02/26.
//

import SwiftUI

struct TodayView: View {
    @State private var showProfileSheet = false
    var body: some View {
        NavigationStack{
            List{
                NavigationLink("Featured Story"){
                    Text("Today")
                        .font(.largeTitle)
                    
                }
                
                
            }
            .navigationTitle("Today")
           
            
            .toolbar{
                Button {
                    showProfileSheet.toggle()
                }
                label :{
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showProfileSheet) {
                ProfileView()
            }
        }
    }
}
struct ProfileView : View {
    //@Environment(\.dismiss) private var dismiss
    var body: some View {
        Image(systemName: "person.circle.fill")
            .font(.system(size: 100))
            .foregroundStyle(.blue)
    }
}



#Preview {
    TodayView()
}
