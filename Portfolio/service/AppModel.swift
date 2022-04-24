//
//  AppModel.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 24/4/22.
//

import Foundation
class AppModel:ObservableObject{
    var portfolio:Portfolio=Portfolio(name: "Alejandro Gómez Martín", role: "Software Engineer", description: "Inmensely passionate about mobile development and related tecchnologies.", location: "Talavera de la Reina, Toledo, Spain", skills: [
        Skill(id: UUID().uuidString, skillName: "SwiftUI", image: "swiftui-150"),
        Skill(id: UUID().uuidString, skillName: "IOS", image: "ios-100"),
        Skill(id: UUID().uuidString, skillName: "Jetpak Compose", image: "jetpack_compose"),
        Skill(id: UUID().uuidString, skillName: "Android", image: "android-100"),
        Skill(id: UUID().uuidString, skillName: "Firebase", image: "firebase2x")
    ],
        experiencie: [
            Experiencie(id: UUID().uuidString, companyName: "Somisata S.L.", role: "Full Stack Developer", duration: "Sept 2021 - present")
        ])
}
