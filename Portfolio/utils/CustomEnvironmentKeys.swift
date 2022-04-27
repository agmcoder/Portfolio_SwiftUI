//
//  CustomEnvironmentKeys.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 27/4/22.
//

import Foundation
import UIKit
import SwiftUI

private struct relativeWidth : EnvironmentKey {
    // 1
    static let defaultValue: CGFloat = UIScreen.main.bounds.width

}
private struct relativeHeigth : EnvironmentKey {
    // 1
    static let defaultValue: CGFloat = UIScreen.main.bounds.height

}



extension EnvironmentValues {
  var width: CGFloat {
    get { self[relativeWidth.self] }
    set { self[relativeWidth.self] = newValue }
  }
}

extension EnvironmentValues {
  var heigth: CGFloat {
    get { self[relativeHeigth.self] }
    set { self[relativeHeigth.self] = newValue }
  }
}

