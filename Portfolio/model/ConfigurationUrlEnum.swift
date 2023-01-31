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
            return Configuration.getValueFromConfigurationFile(for: "githubProfile",parameter: "url")
        case .linkedinProfile:
            return Configuration.getValueFromConfigurationFile(for: "linkedinProfile", parameter: "url")
        case .whatsAppLink:
            return Configuration.getValueFromConfigurationFile(for: "whatsAppLink", parameter: "url")
        case .biometricAuthentication:
            return Configuration.getValueFromConfigurationFile(for: "biometricAuthentication", parameter: "url")
         case .progressView:
            return Configuration.getValueFromConfigurationFile(for: "progressView", parameter: "url")
        case .jsonFetch:
            return Configuration.getValueFromConfigurationFile(for: "jsonFetch", parameter: "url")

        }
    }
    
    var image: String {
        switch self {
        case .progressView:
            return Configuration.getValueFromConfigurationFile(for: "progressView", parameter: "image")
        case .githubProfile:
            return Configuration.getValueFromConfigurationFile(for: "progressView", parameter: "image")
        case .linkedinProfile:
            return Configuration.getValueFromConfigurationFile(for: "progressView", parameter: "image")
        case .whatsAppLink:
            return Configuration.getValueFromConfigurationFile(for: "progressView", parameter: "image")
        case .biometricAuthentication:
            return Configuration.getValueFromConfigurationFile(for: "progressView", parameter: "image")
        case .jsonFetch:
            return Configuration.getValueFromConfigurationFile(for: "progressView", parameter: "image")
        }
    }
    
    
    
}
