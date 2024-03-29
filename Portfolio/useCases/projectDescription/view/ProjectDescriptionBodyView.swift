//
//  ProjectDescriptionBodyView.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 29/4/22.
//

import SwiftUI

struct ProjectDescriptionBodyView: View {
    let project:Project
    var body: some View {
        
        
        VStack(alignment:.leading){
            
            
            Text(project.name)
                .font(.title)
                .fontWeight(.bold)
                .padding(10)
            Divider()
            ScrollView{
                Text(project.description)
                    .font(.body)
                    .fontWeight(.regular)
                    .padding(10)
                Spacer()
                
            }
            
            
            
            
        }.frame(width: UIScreen.main.bounds.width)
    }
}


struct ProjectDescriptionBodyView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDescriptionBodyView(project: AppModel().portfolio.projects[4])
    }
}
