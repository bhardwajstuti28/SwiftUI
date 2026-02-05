//
//  TaskView.swift
//  MyDayApp
//
//  Created by Stuti Bhardwaj on 02/02/26.
//

import SwiftUI

struct TaskView: View {
    var body: some View {
        NavigationStack{
            List{
                
                    
                    NavigationLink("Complete SwiftUI Assignment"){
                        Text("Complete SwiftUI Assignment")
                            .font(.title)
                    }
                    NavigationLink("Practice TabView"){
                        Text("Practice TabView")
                            .font(.title)
                    }
                    NavigationLink("Submit Project"){
                        Text("Submit Project")
                            .font(.title)
                    }
                
                
            }
            .navigationTitle("My Tasks")
        }
    }
}

#Preview {
    TaskView()
}
