//
//  CustomDetentView.swift
//  SheetsAndAlerts
//
//  Created by Stuti Bhardwaj on 30/01/26.
//

import SwiftUI

struct CustomDetent : CustomPresentationDetent{
    static func height(in context: Context) -> CGFloat? {
        return context.maxDetentValue - 150
    }
}


struct CustomDetentView: View {
    @State private var showSheet = false
    var body: some View {
        VStack(spacing : 20){
            Button("Show Custom Sheet"){
                showSheet = true
            }
            .sheet(isPresented: $showSheet){
                Text("Custom Detent with logic")
                    .presentationDetents([.custom(CustomDetent.self)])
            }
            .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    CustomDetentView()
}
