//
//  ContentView.swift
//  AppLifeCycleView
//
//  Created by Stuti Bhardwaj on 05/02/26.
//

import SwiftUI

struct ContentView: View {
    @Environment(CartModel.self) var cart
    var body: some View {
        VStack {
            
                Text("Smart Card")
                List(cart.items){ item in
                    HStack{
                        Text(item.name)
                            .font(.largeTitle)
                        Text("x \(item.quantity)")
                            .foregroundStyle(.secondary)
                    }
                    
                    
                }
                
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environment(CartModel())
}
