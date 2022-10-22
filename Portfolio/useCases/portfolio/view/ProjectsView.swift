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
    @Environment(\.colorScheme) var colorScheme
    
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
                                
                                
                                
                                NavigationLink(
                                    destination:{
                                        ProjectDescriptionView(project: project)
                                    },
                                    label:
                                        {
                                            //cards animation
                                            
                                            GeometryReader { proxy in
                                                let minX=proxy.frame(in: .global).minX
                                                VStack{
                                                ProjectView(project:project)
                                                    .rotation3DEffect(.degrees(minX / -3), axis: (x:1,y:0,z:1))
                                                    .blur(radius: abs(minX / 10))
                                                //Text("\(minX)")
                                                }.frame(width:width)
                                                
                                            }
                                        }
                                ).buttonStyle(PlainButtonStyle())
                                
                            }
                    }
                    .tabViewStyle(.page(indexDisplayMode: .always))
                    .indexViewStyle(.page(backgroundDisplayMode: .always))
                    
                    .frame(width:width, height: heigth * 0.4)
                    .onAppear(){
                        setupAppearance()
                    }
                    
                    
                }
                
                
            }
            
        }
        
        
    }
    func setupAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = colorScheme == .light ? .black : .white
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
    }
}

struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{proxy in
            ProjectsView(projects: AppModel().portfolio.projects)
            
            
            
        }
    }
}

struct ProjectsView_Previews_dark: PreviewProvider {
    static var previews: some View {
        GeometryReader{proxy in
            ProjectsView(projects: AppModel().portfolio.projects).preferredColorScheme(.dark)
            
            
            
        }
    }
}
