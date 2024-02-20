//
//  Photon_School_AppApp.swift
//  Photon School App
//
//  Created by John Stanford on 2/14/24.
//

import SwiftUI

@main
struct Photon_School_AppApp: App {
    private let themeManager = PhotonSchoolAppThemeManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(themeManager)
        }
    }
}
