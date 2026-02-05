//
//  CommunityView.swift
//  Conversetemp
//
//  Created by Stuti Bhardwaj on 03/02/26.
//

import SwiftUI

struct CommunityView: View {
    var body: some View {
        ZStack{
            Color.gray.opacity(0.9)
                .ignoresSafeArea()
            ConverseView()
        }
    }
}

#Preview {
    CommunityView()
}
