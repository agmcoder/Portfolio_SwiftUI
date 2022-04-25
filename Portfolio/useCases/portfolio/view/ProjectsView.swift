//
//  ProjectsView.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 25/4/22.
//

import SwiftUI

struct ProjectsView: View {
    var projects:[Project]
    
    
    @State var showProjects=true
    
    var body: some View {

        VStack {
            HStack(spacing:16){
                
                Text("Projects")
                    .font(.title2)
                    .fontWeight(.bold)
                    .opacity(0.9)
                Button(
                    action:{
                        withAnimation(.easeInOut(duration: 0.40)){
                            showProjects.toggle()

                        }
                    } ,
                    label: {
                        Image(systemName: "chevron.up")
                            .rotationEffect(self.showProjects ? .zero: .degrees(180))
                    }
                    
                ).buttonStyle(PlainButtonStyle())
                
                
                Spacer()
            }.padding(.horizontal)
            
            if(showProjects){
                VStack{
                    ScrollView(.horizontal){
                            LazyHStack(alignment: .top, spacing: 10){
                                

                                ForEach(projects) { project in
                                    
                                    ProjectView(project:project)
                            
                                }
                                
                        
                            }
                        
                        
                    }
                    
                }
                
                
            }
            
        }

    }
}

struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{proxy in
            ProjectsView(projects: AppModel().portfolio.projects)

            
            
        }
    }
}
