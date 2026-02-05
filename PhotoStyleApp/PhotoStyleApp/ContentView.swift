//
//  ContentView.swift
//  PhotoStyleApp
//
//  Created by Stuti Bhardwaj on 29/01/26.
//

import SwiftUI
struct PhotoView : View {
    @State private var isSelecting = false
    @State private var selectedPhotos: Set<Int>
    var body: some View {
        NavigationStack{
            List{
                ForEach(selectedPhotos){ i in
                    
                }
            }
            ZStack{
                Image(systemName: "photo.fill")
                    .font(.system(size: 300))
                    .foregroundStyle(.blue)
                
                
                
                
                
            }

            .navigationTitle("Photos")

            .navigationBarTitleDisplayMode(.large)
            
            
        }
    }
}
struct ContentView: View {
    var body: some View {
        PhotoView()
    
    }
}

#Preview {
    ContentView()
}
