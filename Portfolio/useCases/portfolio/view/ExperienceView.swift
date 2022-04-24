//
//  ExperienceView.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 25/4/22.
//

import SwiftUI

struct ExperienceView: View {
    var experience:Experience
    var body: some View {
        VStack{
            
        }
    }
}

struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceView(experience: AppModel().portfolio.experiences[0])
    }
}
