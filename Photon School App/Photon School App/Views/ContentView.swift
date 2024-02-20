//
//  ContentView.swift
//  Photon School App
//
//  Created by John Stanford on 2/14/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var themeManager: PhotonSchoolAppThemeManager
    
    @StateObject var vm = SchoolsViewModel()
    
    @State private var showDetails = false
    
    var body: some View {
        TopBarView()
            .environmentObject(themeManager)
        SchoolsListView()
            .environmentObject(themeManager)
    }
}

//#Preview {
//    ContentView()
//}
