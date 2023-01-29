//
//  ProjectDescriptionHeaderView.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 29/4/22.
//

import SwiftUI
import Kingfisher

struct ProjectDescriptionHeaderView: View {
    
    let project:Project
    
    var body: some View {
        VStack{
            if( project.image.contains("http")){
                KFImage(URL(string: project.image))
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .padding(.top,10)
                    .padding(.horizontal,10)
                
            }
            else if(project.image.contains("gif")){
                
            }
            else{
                
                Image(project.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .padding(.top,10)
                    .padding(.horizontal,10)
                //.foregroundColor(colorScheme == .light ? .black : .white)
                
            }
            
        }
        .frame( height: UIScreen.main.bounds.height * 0.3)
    }
}

struct ProjectDescriptionHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDescriptionHeaderView(project: AppModel().portfolio.projects[4])
    }
}
