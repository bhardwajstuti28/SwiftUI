//
//  AppLifeCycleViewApp.swift
//  AppLifeCycleView
//
//  Created by Stuti Bhardwaj on 05/02/26.
//

import SwiftUI

@main
struct AppLifeCycleViewApp: App {
    @State private var cart = CartModel()
    @Environment(\.scenePhase) private var scenePhase
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(cart)
                
        }
        .onChange(of : scenePhase) {
            switch scenePhase {
            case .background:
                print("My App is in background")
                cart.saveCart()
            case .inactive:
                print("My App is in inactive")
                cart.pausePayment()
            case .active:
                print("My App is in active")
                cart.refreshCart()
                
            @unknown default :
                print("Unknown scene phase")
            }
        }
    }
}
