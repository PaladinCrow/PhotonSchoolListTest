//
//  DarkTheme.swift
//  Photon School App
//
//  Created by John Stanford on 2/20/24.
//

import Foundation
import SwiftUI

struct DarkTheme: PhotonSchoolAppTheme {
    
    var primaryColor: Color = Color.black
    
    var secondaryColor: Color = Color.gray
    
    var backgroundColor: Color = Color(red: 0.0745, green: 0.0941, blue: 0.3843)
    
    var textColor: Color = Color.white
    
    var cornerRadius: CGFloat = 20.0
}
