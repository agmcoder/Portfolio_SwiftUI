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
        VStack{
            GeometryReader{proxy in
                
                VStack(alignment:.leading){
                    
                    
                    Text(project.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                    Divider()
                    Text(project.description)
                        .font(.body)
                        .fontWeight(.regular)
                        .padding()
                    Spacer()
                    
                }.frame(width: proxy.size.width, height: proxy.size.height*0.7)
            }
            
        }
    }
}


struct ProjectDescriptionBodyView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDescriptionBodyView(project: AppModel().portfolio.projects[4])
    }
}
