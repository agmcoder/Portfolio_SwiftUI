//
//  ProjectsView.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 25/4/22.
//

import SwiftUI

struct ProjectsView: View {
    var projects:[Project]
    @Environment(\.width) var width
    @Environment(\.heigth) var heigth
    
    @State var showProjects=true
    
    var body: some View {

        VStack {
            HStack(spacing:16){
                
                Text("Projects")
                    .font(.title2)
                    .fontWeight(.bold)
                    .opacity(0.9)
                    .padding(.leading,24)
                    
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
                    TabView{
                        ForEach(projects, id:\.id) { project in
                                    
                            GeometryReader { proxy in
                                ProjectView(project:project)
                            }
                            
                            }
                    }
                    .tabViewStyle(.page(indexDisplayMode: .always))
                    .frame( height: heigth * 0.3)
                    
                    
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
