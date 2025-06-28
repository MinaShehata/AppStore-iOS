//
//  AppStore_iOSApp.swift
//  AppStore-iOS
//
//  Created by Mina Shehata on 30/05/25.
//

import SwiftUI
import AppStore

@main
struct AppStore_iOSApp: App {
    
    // MARK: Properities
    // manage entrance to SDK...
    var appCoordinator = AppCoordinator()
    
    // MARK: Body for main scene...
    var body: some Scene {
        WindowGroup("Main", id: "MainWindow") {
            
            ActorView()
            
        }
    }
}
