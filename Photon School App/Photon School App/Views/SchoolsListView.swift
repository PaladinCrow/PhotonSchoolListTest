//
//  SchoolsListView.swift
//  Photon School App
//
//  Created by John Stanford on 2/20/24.
//

import SwiftUI

struct SchoolsListView: View {
    @EnvironmentObject var themeManager: PhotonSchoolAppThemeManager
    @StateObject var vm = SchoolsViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(vm.schools) { school in
                    NavigationLink(school.school_name) {
                        SchoolDetailsView(
                            schoolName: school.school_name,
                            schoolInfo: school.overview_paragraph,
                            website: school.website ?? "",
                            school_email: school.school_email ?? ""
                        )
                        .environmentObject(themeManager)
                    }
                }
                .padding()
                .background(themeManager.backgroundColor)
                .foregroundColor(themeManager.textColor)
                .clipShape(
                    RoundedRectangle(cornerRadius: themeManager.cornerRadius)
                )
            }
        }
        .animation(.spring(duration: 1.0), value: themeManager.cornerRadius)
        .onAppear() {
            if vm.schools.isEmpty {
                Task {
                    await vm.downloadData(from: "https://data.cityofnewyork.us/resource/s3k6-pzi2.json")
                }
            }
        }
    }
}
