//
//  PlanAheadApp.swift
//  PlanAhead
//
//  Created by Bartuğ Kaan Çelebi on 11.11.2024.
//
import FirebaseCore
import SwiftUI

@main
struct PlanAheadApp: App {
    
    init () {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
