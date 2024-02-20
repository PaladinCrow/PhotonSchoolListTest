//
//  SchoolDetailsView.swift
//  Photon School App
//
//  Created by John Stanford on 2/14/24.
//

import SwiftUI

struct SchoolDetailsView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var themeManager: PhotonSchoolAppThemeManager
    
    @State var schoolName: String
    @State var schoolInfo: String
    @State var website: String
    @State var school_email: String
    
    var body: some View {
        VStack {
            Text(schoolName)
                .padding()
                .background(themeManager.backgroundColor)
                .foregroundColor(themeManager.textColor)
                .clipShape(
                    RoundedRectangle(cornerRadius: themeManager.cornerRadius)
                )
            Text(schoolInfo)
                .padding()
                .background(themeManager.backgroundColor)
                .foregroundColor(themeManager.textColor)
                .multilineTextAlignment(.leading)
                .clipShape(
                    RoundedRectangle(cornerRadius: themeManager.cornerRadius)
                )
            Link(website, destination: URL(string: "https://" + website)!)
                .padding()
                .background(themeManager.backgroundColor)
                .clipShape(
                    RoundedRectangle(cornerRadius: themeManager.cornerRadius)
                )
            Link(school_email, destination: URL(string: school_email)!)
                .environment(\.openURL, OpenURLAction { url in
                    print("Open email in specific app")
                    return .handled
                })
                .padding()
                .background(themeManager.backgroundColor)
                .clipShape(
                    RoundedRectangle(cornerRadius: themeManager.cornerRadius)
                )
            Spacer()
        }
        .padding()
        .animation(.spring(duration: 1.0), value: themeManager.cornerRadius)
    }
}
