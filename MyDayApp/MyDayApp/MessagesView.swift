//
//  MessagesView.swift
//  MyDayApp
//
//  Created by Stuti Bhardwaj on 02/02/26.
//

import SwiftUI

struct MessagesView: View {
    @State private var notificationCount = 3

    var body: some View {
        VStack{
            Text("No new messages")
        }
    }
}

#Preview {
    MessagesView()
}
