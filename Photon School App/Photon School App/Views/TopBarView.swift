//
//  TopBarView.swift
//  Photon School App
//
//  Created by John Stanford on 2/20/24.
//

import SwiftUI

struct TopBarView: View {
    @EnvironmentObject var themeManager: PhotonSchoolAppThemeManager
    
    var body: some View {
        HStack {
            Button("Toggle Themes") {
                if themeManager.currentTheme == 0 {
                    themeManager.currentTheme = 1
                } else {
                    themeManager.currentTheme = 0
                }
            }
            .padding()
            .background(themeManager.backgroundColor)
            .foregroundColor(themeManager.textColor)
            .clipShape(
                RoundedRectangle(cornerRadius: themeManager.cornerRadius)
            )
            .animation(.spring(duration: 1.0), value: themeManager.cornerRadius)
        }
    }
}
