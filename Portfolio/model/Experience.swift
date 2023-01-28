//
//  Experiencie.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 24/4/22.
//

import Foundation

struct Experience:Identifiable{
    
    var id: UUID = UUID()
    let companyName:String
    let role:String
    let duration:String
    
}
