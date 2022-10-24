//
//  Color.swift
//  Portfolio
//
//  Created by agmcoder on 24/10/22.
//

import Foundation
import SwiftUI

extension Color{
    static let theme = ThemeColor()
}

struct ThemeColor{
    let backgroundItemColor = Color("BackgroundItemColors")
    let fontColor = Color("FontColor")
    let profileBackgroundColor = Color("ProfileBackgroundColor")
}
