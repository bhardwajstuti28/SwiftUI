//
//  DetailView.swift
//  SheetsAndAlerts
//
//  Created by Stuti Bhardwaj on 30/01/26.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack{
            VStack{
                Text("This is a sheet")
                    .font(.largeTitle)
                    .padding()
                
                
            }
            .navigationTitle("Details")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    Button("Done"){
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    DetailView()
}
