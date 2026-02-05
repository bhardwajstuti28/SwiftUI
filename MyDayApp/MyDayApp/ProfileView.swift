//
//  ProfileView.swift
//  MyDayApp
//
//  Created by Stuti Bhardwaj on 02/02/26.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            List {

              
                HStack(spacing: 16) {
                    Image(systemName: "person.circle.fill")
                        .font(.system(size: 60))
                        .foregroundStyle(.blue)

                    VStack(alignment: .leading, spacing: 4) {
                        Text("Stuti Bhardwaj")
                            .font(.title2)
                            .fontWeight(.semibold)

                        Text("iOS Developer")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                .padding(.vertical, 8)

               
                NavigationLink("Account Settings") {
                    Text("Account Settings")
                }

                NavigationLink("Notifications") {
                    Text("Notifications")
                }

                NavigationLink("Help & Support") {
                    Text("Help & Support")
                }

                NavigationLink("Sign Out") {
                    Text("Sign Out")
                }
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
