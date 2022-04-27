//
//  SkillsView.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 24/4/22.
//

import SwiftUI

struct SkillsView: View {
    var skills:[Skill]
    var width:CGFloat
    
    @State var showSkills=true
    
    
    
    var body: some View {
        VStack{
            HStack(spacing:16){
                
                Text("Skills")
                    .font(.title2)
                    .fontWeight(.bold)
                    .opacity(0.9)
                Button(
                    action:{
                        withAnimation(.easeInOut(duration: 0.40)){
                            showSkills.toggle()

                        }
                    } ,
                    label: {
                        Image(systemName: "chevron.up")
                            .rotationEffect(self.showSkills ? .zero: .degrees(180))
                    }
                    
                ).buttonStyle(PlainButtonStyle())
                    
                
                Spacer()
            }.padding(.horizontal)
            if(showSkills){
                LazyVGrid(
                    columns: [GridItem(),GridItem(),GridItem()],
                    alignment: .center,
                    spacing: 12
                    
                ){
                    ForEach(skills) {skill in
                        SkillView(skill: skill, width: width / 3.2)
                    }
                }
                    //.padding(.top,38)
            }
        }
    }
}

struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{ proxy in
            SkillsView(skills: AppModel().portfolio.skills,width: 350)

        }
    }
}
