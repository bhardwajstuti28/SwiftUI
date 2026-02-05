//
//  ShowAlertView.swift
//  SheetsAndAlerts
//
//  Created by Stuti Bhardwaj on 30/01/26.
//

import SwiftUI

struct ShowAlertView: View {
    @State private var showAlert = false
    var body: some View {
        VStack{
            Button("Show Alert"){
                showAlert = true
            }
            .alert("Are you want to sure to delete",isPresented: $showAlert){
                Button("Delete",role: .destructive){
                    print("Deleted")
                }
                Button("Cancel",role : .cancel){
                    
                }
            }
        }
    }
}
struct ShowAlertView1: View {
    @State private var showAlert1 = false

    var body: some View {
        Button("Alert with Message Text") {
            showAlert1 = true
        }
        .alert(
            "Network Error",
            isPresented: $showAlert1,
            actions: {
                Button("Retry") { }
                Button("Cancel", role: .cancel) { }
            },
            message: {
                Text("Unable to connect to server")
            }
        )
    }
}

 
#Preview {
    ShowAlertView()
    ShowAlertView1()
}
