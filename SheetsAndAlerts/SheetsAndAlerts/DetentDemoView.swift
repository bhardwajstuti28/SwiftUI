//
//  DetentDemoView.swift
//  SheetsAndAlerts
//
//  Created by Stuti Bhardwaj on 30/01/26.
//

import SwiftUI

struct DetentDemoView: View {
    @State private var showMedium = false
    @State private var showLarge = false
    var body: some View {
        VStack(spacing : 20){
            Button("Show Medium Sheet"){
                showMedium = true
            }
            .sheet(isPresented: $showMedium){
                Text("Medium Sheet")
                    .presentationDetents([.medium,.large])
            }
            
            Button("Show Large Sheet"){
                showLarge = true
            }
            .sheet(isPresented: $showLarge){
                Text("Large Sheet")
                    .presentationDetents([.height(200)])
                //.fraction(0.4)   gives 40 % image
            }
            
            
        }
    }
}

#Preview {
    DetentDemoView()
}
