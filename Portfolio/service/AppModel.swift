//
//  AppModel.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 24/4/22.
//
import Foundation
class AppModel:ObservableObject{
    var portfolio:Portfolio=Portfolio(
        
        name: "Alejandro Gómez Martín",
        role: "Software Engineer", description: "Inmensely passionate about mobile development and related tecchnologies.",
        location: "Talavera de la Reina, Toledo, Spain",
        // Skills
        skills: [
            
            Skill( skillName: "SwiftUI", image: "swiftui"),
            Skill( skillName: "IOS", image: "ios"),
            Skill( skillName: "Jetpak Compose", image: "jetpack_compose"),
            Skill( skillName: "Android", image: "android"),
            Skill( skillName: "Firebase", image: "firebase"),
            Skill( skillName: "Azure", image: "azure_icon"),
            Skill( skillName: ".Net Core", image: "netCore"),
            Skill( skillName: "SQL", image: "sql"),
            Skill( skillName: "JSON", image: "json")
            
        ],
        // experiences
        experiences: [
            
            Experience( companyName: "Somisata S.L.", role: "Full Stack Developer", duration: "Sept 2021 - Apr - 2022"),
            Experience( companyName: "Freelance", role: "Native Mobile Developer", duration: "Sept 2021 - present"),
            Experience( companyName: "Entelgy",role: ".Net Software Engineer", duration: "May 2022 - Jan 2023"),
            Experience( companyName: "Capgemini", role: "Junior IOS Developer", duration: "Jan 2023 - present")
            
        ],
        // porjects
        projects: [
            
            Project( name: "WhatsApp Link", image: "whatsAppLinkIcon", description: "this application it been build with Swift and SwiftUI. whith this app you can send a WhatsApp Message without saving a contact. Some times it´s we need to open a WhatsApp conversation but we don´t want to save the number so this is a great solution.", githubUrl: ConfigurationUrlEnumString.whatsAppLink.url),
            
            Project( name: "Biometric athentication svg", image: "fingerprint", description: "This application has build with Xcode framework and as programming languages have been used Swift and SwiftUI. It´s a project where is possible to learn how to use biometric authentication within an Iphone app", githubUrl: ConfigurationUrlEnumString.biometricAuthentication.url),
            
            Project( name: "ProgressView SwiftUI", image: ConfigurationUrlEnumString.progressView.image, description: "The user experience is so importante for the app client, if your app needs to download any data, your logic can´t block the main thread and need to show a progressView.", githubUrl: ConfigurationUrlEnumString.progressView.url),
            
            Project( name: "JSON fetch SwiftUI", image: "json", description: "It´s usually in an application needs to fetch data or from the server. In this project you will learn how to fetch a JSON.", githubUrl: ConfigurationUrlEnumString.jsonFetch.url)
    
        ]
    )
}
