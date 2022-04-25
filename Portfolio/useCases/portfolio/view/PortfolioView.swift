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
    
    
    //MARK:- view
    var body: some View {
        ZStack{
            Color(UIColor.systemBackground)
                .ignoresSafeArea()
            ScrollView(
                .vertical,
                showsIndicators: false
            ){
                LazyVStack(alignment:.center){
                    HeaderView(appModel: appModel)
                    SkillsView(skills: appModel.portfolio.skills, width: UIScreen.main.bounds.width-40)
                        .padding(.vertical,32)
                    ExperiencesView(experiences: appModel.portfolio.experiences)
                    
                    Spacer()
                    
                }.padding(24)
                
            }
        }
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
