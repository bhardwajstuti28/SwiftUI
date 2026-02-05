//
//  TagView.swift
//  Conversetemp
//
//  Created by Stuti Bhardwaj on 02/02/26.
//

import SwiftUI

struct TagView: View {
    
    let text: String
    var body: some View {
        

           
                Text(text)
                    .font(.caption)
                    .foregroundStyle(.white)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(
                        Capsule()
                            .fill(Color(red: 0.77, green: 0.27, blue: 0.05))
                    )
            
    }
}

#Preview {
    TagView(text:"Indian Art")
}
