//
//  PhotonSchoolAppTheme.swift
//  Photon School App
//
//  Created by John Stanford on 2/20/24.
//

import SwiftUI

protocol PhotonSchoolAppTheme {
    var primaryColor: Color { get }
    var secondaryColor: Color { get }
    var backgroundColor: Color { get }
    var textColor: Color { get }
    var cornerRadius: CGFloat { get }
}

class PhotonSchoolAppThemeManager: ObservableObject {
    private let lightTheme = LightTheme()
    private let darkTheme = DarkTheme()
    
    @Published var currentTheme = 0
    
    var themes: [any PhotonSchoolAppTheme] {
        [lightTheme, darkTheme]
    }
    
    var primaryColor: Color {
        switch currentTheme {
        case 0:
            return lightTheme.primaryColor
        case 1:
            return darkTheme.primaryColor
        default:
            return lightTheme.primaryColor
        }
    }
    
    var secondaryColor: Color {
        switch currentTheme {
        case 0:
            return lightTheme.secondaryColor
        case 1:
            return darkTheme.secondaryColor
        default:
            return lightTheme.secondaryColor
        }
    }
    
    var backgroundColor: Color {
        switch currentTheme {
        case 0:
            return lightTheme.backgroundColor
        case 1:
            return darkTheme.backgroundColor
        default:
            return lightTheme.backgroundColor
        }
    }
    
    var textColor: Color {
        switch currentTheme {
        case 0:
            return lightTheme.textColor
        case 1:
            return darkTheme.textColor
        default:
            return lightTheme.textColor
        }
    }
    
    var cornerRadius: CGFloat {
        switch currentTheme {
        case 0:
            return lightTheme.cornerRadius
        case 1:
            return darkTheme.cornerRadius
        default:
            return lightTheme.cornerRadius
        }
    }
}
