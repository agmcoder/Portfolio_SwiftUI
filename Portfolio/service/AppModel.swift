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
        skills: [
            Skill(id: UUID().uuidString, skillName: "SwiftUI", image: "swiftui"),
            Skill(id: UUID().uuidString, skillName: "IOS", image: "ios"),
            Skill(id: UUID().uuidString, skillName: "Jetpak Compose", image: "jetpack_compose"),
            Skill(id: UUID().uuidString, skillName: "Android", image: "android"),
            Skill(id: UUID().uuidString, skillName: "Firebase", image: "firebase")
        ],
        experiences: [
            Experience(id: UUID().uuidString, companyName: "Somisata S.L.", role: "Full Stack Developer", duration: "Sept 2021 - Apr - 2022"),
            Experience(id: UUID().uuidString, companyName: "Freelance", role: "Native Mobile Developer", duration: "Sept 2021 - present"),
            Experience(id: UUID().uuidString, companyName: "Entelgy",role: ".Net Software Engineer", duration: "May 2022 - present")
        ],
        projects: [
            
            Project(id: UUID().uuidString, name: "Location Tracker With Jetpack Compose", image: "location_tracker_jetpack_compose", description: "this application is build in Android Studio with Kotlin and Jetpack Compose.you can practice and learn with this project how we can work with a clean code filosofy and layer structure."),
            Project(id: UUID().uuidString, name: "Projecto android", image: "location_tracker_swfitui", description: "this application is build in Android Studio with Kotlin and Jetpack Compose.you can practice and learn with this project how we can work with a clean code filosofy and layer structure."),
            Project(id: UUID().uuidString, name: "Projecto android", image: "android", description: "this application is build in Android Studio with Kotlin and Jetpack Compose.you can practice and learn with this project how we can work with a clean code filosofy and layer structure."),
            Project(id: UUID().uuidString, name: "Biometric athentication svg", image: "fingerprint", description: "this application is build in Android Studio with Kotlin and Jetpack Compose.you can practice and learn with this project how we can work with a clean code filosofy and layer structure."),
            Project(id: UUID().uuidString, name: "ProgressView SwiftUI", image: "https://www.simpleswiftguide.com/wp-content/uploads/2019/11/linear-progress-bar-indicator-swiftui.png", description: "this application is build in Android Studio with Kotlin and Jetpack Compose.you can practice and learn with this project how we can work with a clean code filosofy and layer structure.")
            
            
            
        ]
    )
}
