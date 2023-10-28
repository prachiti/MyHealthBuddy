//
//  MyHealthBuddyApp.swift
//  MyHealthBuddy
//
//  Created by Prachiti Gaikwad on 10/27/23.
//

import FirebaseCore
import SwiftUI

@main
struct MyHealthBuddyApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
