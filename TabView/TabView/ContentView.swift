//
//  ContentView.swift
//  TabView
//
//  Created by Stuti Bhardwaj on 02/02/26.
//

import SwiftUI

struct ContentView: View {
    enum ClockTab{
        case worldClock
        case alarm
        case stopWatch
    }
        
        @State private var selectedTab : ClockTab = .alarm
    
    var body: some View {
        VStack {
            TabView(selection: $selectedTab){
                Tab("World Clock",systemImage: "globe.fill",value : .worldClock){
                    Text("World Clock Screen")
                        .font(.largeTitle)
                }
                Tab("Alarm",systemImage: "alarm.fill",value : .alarm){
                    Text("Alarm")
                        .font(.largeTitle)
                }
                Tab("Stop Watch",systemImage: "stopwatch.fill",value : .alarm){
                    Text("")
                        .font(.largeTitle)
                }
                
                
                

            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
