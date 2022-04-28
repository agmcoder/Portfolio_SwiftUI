//
//  AppModel.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 24/4/22.
//
import Kingfisher
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
            Experience(id: UUID().uuidString, companyName: "Freelance", role: "Native Mobile Developer", duration: "Sept 2021 - present")
        ],
        projects: [
            
            Project(id: UUID().uuidString, name: "Projecto android", image: "android"),
            Project(id: UUID().uuidString, name: "Projecto android", image: "android"),
            Project(id: UUID().uuidString, name: "Projecto android", image: "android"),
            Project(id: UUID().uuidString, name: "Biometric athentication svg", image: "fingerprint"),
            Project(id: UUID().uuidString, name: "ProgressView SwiftUI", image: "https://www.simpleswiftguide.com/wp-content/uploads/2019/11/linear-progress-bar-indicator-swiftui.png")
            
            
            
        ]
    )
}
