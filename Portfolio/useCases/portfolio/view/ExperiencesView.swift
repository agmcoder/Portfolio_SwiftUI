//
//  ExperiencesView.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 25/4/22.
//

import SwiftUI


struct ExperiencesView: View {
    
    
    var experiences:[Experience]

    @State var showExperiences=true
    
    var body: some View {
        VStack(alignment:.leading,spacing: 24){
            HStack(spacing:16){
                
                Text("Experiences")
                    .font(.title2)
                    .fontWeight(.bold)
                    .opacity(0.9)
                Button(
                    action:{
                        withAnimation(.easeInOut(duration: 0.40)){
                            showExperiences.toggle()

                        }
                    } ,
                    label: {
                        Image(systemName: "chevron.up")
                            .rotationEffect(self.showExperiences ? .zero: .degrees(180))
                    }
                    
                ).buttonStyle(PlainButtonStyle())
                    
                Spacer()
            }.padding(.bottom,14)
            
                if(showExperiences){
                    
                        ForEach(experiences) {experience in
                            ExperienceView(experience: experience)
                        }
                    
                    
                
            }
            
        }
    }
}

struct ExperiencesView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{proxy in
            ExperiencesView(experiences: AppModel().portfolio.experiences)
                .padding(24)

        }
        
    }
}
