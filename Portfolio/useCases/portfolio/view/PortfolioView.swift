//
//  PortfolioView.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 24/4/22.
//

import SwiftUI

struct PortfolioView: View {
    //MARK:- variables
    var appModel:AppModel=AppModel()
    @Environment(\.width) var width
    
    //MARK:- view
    var body: some View {
        NavigationView{
            ZStack{
                Color(UIColor.systemBackground)
                    .ignoresSafeArea()
                ScrollView(
                    .vertical,
                    showsIndicators: false
                ){
                    VStack{
                        LazyVStack(alignment:.center){
                            HeaderView(appModel: appModel)
                            SkillsView(skills: appModel.portfolio.skills, width: width-40)
                                .padding(.top,32)
                            ExperiencesView(experiences: appModel.portfolio.experiences)
                        }.padding(.horizontal,24)
                        ProjectsView(projects: appModel.portfolio.projects)
                        
                        Spacer()
                        
                    }.padding(.top,10)
                    
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
    }
}
struct PortfolioView_Previews_light: PreviewProvider {
    static var previews: some View {
        GeometryReader{
            proxy in
            PortfolioView().colorScheme(.light)
            
        }
    }
}

struct PortfolioView_Previews_dark: PreviewProvider {
    static var previews: some View {
        GeometryReader{
            proxy in
            PortfolioView().colorScheme(.dark)
            
        }
    }
}
