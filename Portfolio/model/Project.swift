//
//  Project.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 25/4/22.
//

import Foundation

struct Project:Identifiable{
 
    var id: UUID = UUID()
    let name: String
    let image: String
    let description: String

}
