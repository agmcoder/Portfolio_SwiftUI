//
//  AppThemeViewModel.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 1/5/22.
//

import SwiftUI

class AppThemeViewModel: ObservableObject {
    
    @AppStorage("isDarkMode") var isDarkMode: Bool = true
    // also exists in DarkModeViewModifier()
    
}
