//
//  ConfigurationUrlEnum.swift
//  Portfolio
//
//  Created by agmcoder on 29/1/23.
//

import Foundation

enum ConfigurationUrlEnumString: String {
    
    case githubProfile
    case linkedinProfile
    case whatsAppLink
    case biometricAuthentication
    case progressView
    case jsonFetch
    
    var url: String {
        switch self {
        case .githubProfile:
            return Configuration.url(for: "githubProfile")
        case .linkedinProfile:
            return Configuration.url(for: "linkedinProfile")
        case .whatsAppLink:
            return Configuration.url(for: "whatsAppLink")
        case .biometricAuthentication:
            return Configuration.url(for: "biometricAuthentication")
         case .progressView:
            return Configuration.url(for: "progressView")
        case .jsonFetch:
            return Configuration.url(for: "jsonFetch")

        }
    }
    
}
