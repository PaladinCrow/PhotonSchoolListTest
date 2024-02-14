//
//  ContentView.swift
//  Photon School App
//
//  Created by John Stanford on 2/14/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = SchoolsViewModel()
    
    @State private var showDetails = false
    
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
                    }
                }
            }
        }
        .padding()
        .onAppear() {
            if vm.schools.isEmpty {
                Task {
                    await vm.downloadData(from: "https://data.cityofnewyork.us/resource/s3k6-pzi2.json")
                }
            }
        }
    }
}

//#Preview {
//    ContentView()
//}
