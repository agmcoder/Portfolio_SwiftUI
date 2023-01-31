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
        VStack(alignment: .leading){
            Circle()
                .frame(width: 10, height: 10)
                .opacity(0.6)
            HStack{
                RoundedRectangle(cornerRadius: 8)
                    .frame(width:3)
                    .padding(.leading,3)
                
                ExperienceContent(experience: experience)
            } // HStack
            .padding(.top,8)
            
        } // VStack
        .fixedSize()
    }
}

struct ExperienceContent: View{
    let experience:Experience
    var body: some View{
        VStack(alignment: .leading){
            Text(experience.role)
                .font(.title3).fontWeight(.semibold)
            Text(experience.companyName)
                .font(.subheadline)
                .opacity(0.75)
                .padding(.top,4)
            Text(experience.duration)
                .font(.subheadline)
                .opacity(0.45)
                .padding(.top,14)
            
            
        }.padding(.leading,16) // VStack
    }
}
struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{proxy in
            ExperienceView(experience: AppModel().portfolio.experiences[0]).padding(24)
        } // GeometryReader
        
    }
}
