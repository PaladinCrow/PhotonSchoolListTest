//
//  Schools.swift
//  Photon School App
//
//  Created by John Stanford on 2/14/24.
//

import Foundation

class Schools: Identifiable, Codable {
    let dbn: String
    let school_name: String
    let overview_paragraph: String
    let school_email: String?
    let website: String?
}
