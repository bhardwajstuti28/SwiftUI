//
//  ConverseView.swift
//  Conversetemp
//
//  Created by Stuti Bhardwaj on 02/02/26.
//

import SwiftUI

struct ConverseView: View {
    var body: some View {
        
        NavigationStack{
            
                ScrollView{
                    
                    VStack{
                        HStack{
                            Text("Community")
                                .font(.system(size: 30))
                                .bold()
                            Spacer()
                               
                            Button{
                                
                            }label: {
                                Image(systemName: "square.and.pencil")
                                    .font(.system(size: 30))
                                    .foregroundStyle(Color("primary"))
                                
                            }
                           
                            .padding(.horizontal,12)
                        }
     
                       
                        CommunityCardView()
                        CommunityCardView()
                        CommunityCardView()
                        CommunityCardView()
                        CommunityCardView()
                    }
                    .padding()
                    
                    
                }
                .background(Color.white)
                            .ignoresSafeArea(edges: .bottom)
                
            }
        
    }
}

#Preview {
    ConverseView()
}
