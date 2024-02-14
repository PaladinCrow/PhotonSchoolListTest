//
//  SchoolsViewModel.swift
//  Photon School App
//
//  Created by John Stanford on 2/14/24.
//

import Foundation

class SchoolsViewModel: ObservableObject {
    @Published var schools:[Schools] = []
    
    func downloadData(from: String) async {
        guard let downloadedData: [Schools] = await WebService().downloadData(fromURL: from) else {return}
        schools = downloadedData
    }
}
