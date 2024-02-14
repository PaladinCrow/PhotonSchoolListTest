//
//  SchoolDetailsView.swift
//  Photon School App
//
//  Created by John Stanford on 2/14/24.
//

import SwiftUI

struct SchoolDetailsView: View {
    @Environment(\.dismiss) var dismiss
    
    @State var schoolName: String
    @State var schoolInfo: String
    @State var website: String
    @State var school_email: String
    
    var body: some View {
        VStack {
            Text(schoolName)
                .padding()
            Text(schoolInfo)
                .padding()
                .multilineTextAlignment(.leading)
            Link(website, destination: URL(string: website)!)
                .padding()
            Link(school_email, destination: URL(string: school_email)!)
                .environment(\.openURL, OpenURLAction { url in
                    print("Open email in specific app")
                    return .handled
                })
                .padding()
            Spacer()
        }
    }
}

#Preview {
    SchoolDetailsView(
        schoolName: "Test Name", 
        schoolInfo: "This is to test the school information and alignment is properly set",
        website: "www.google.com",
        school_email: "www.google.com")///Replace with test email
}
