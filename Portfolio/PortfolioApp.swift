//
//  PortfolioApp.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 24/4/22.
//

import SwiftUI

@main
struct PortfolioApp: App {
    let persistenceController = PersistenceController.shared

    
    
    var body: some Scene {
        WindowGroup {
            PortfolioView()
        }
    }
}
