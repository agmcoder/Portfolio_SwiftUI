//
//  SkillView.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 24/4/22.
//

import SwiftUI

struct SkillView: View {
    
    var skill:Skill
    let width:CGFloat
    
    var body: some View {
        VStack{
            Image(skill.image)
                .resizable()
                .scaledToFill()
                
        }
        
        .frame(width: width,height: width)
        .background(RoundedRectangle(cornerRadius: 12).opacity(0.075))
    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skill: AppModel().portfolio.skills[0],width: 120)
    }
}
