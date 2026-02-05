//
//  CommunityCardView.swift
//  Conversetemp
//
//  Created by Stuti Bhardwaj on 02/02/26.
//

import SwiftUI
struct CommunityCardView: View {
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading){
                    Text("Madhubani Canvas")
                        .font(.system(size: 25))
                        .bold()
                    HStack(spacing: 10) {
                                        TagView(text: "Mithila")
                                        TagView(text: "FolkArt")
                                        TagView(text: "Ethnic")
                                    }
                    
                    .font(.caption)
                    .foregroundStyle(.white)
                    
                    HStack{
                        HStack{
                            Image(systemName: "person.2.fill")
                            
                            
                            Text("2.5K")
                        }
                        Spacer()
                        HStack{
                            Image(systemName: "globe")
                                .foregroundStyle(.blue)
                            
                            Text("Public")
                        }
                    }
                    .padding(.trailing,25)
                    .padding(.top)
                }
                Image("Madhubani")
                    .resizable()
                    .scaledToFill()
                    .frame(width : 120,height : 180)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            
            
        }
        
        
    }
}

#Preview {
    CommunityCardView()
}
