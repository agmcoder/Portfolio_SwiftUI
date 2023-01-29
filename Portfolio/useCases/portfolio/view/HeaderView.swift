//
//  HeaderView.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 24/4/22.
//

import SwiftUI

struct HeaderView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.width) var width

    var appModel:AppModel
    
    var body: some View {
        
        VStack{
            Image("logo_agmcoder")
                .resizable()
                .scaledToFit()
                .frame(width: width*0.4, height: width*0.4)
                .padding(5)
                .background(Circle())
                .shadow(color:Color.theme.profileBackgroundColor, radius: 10)
            
            HStack{
                
                GithubButton()
                LinkedinButton()
            }
 
            Text(appModel.portfolio.name)
                .font(.system(size: UIScreen.main.bounds.width*0.07)).fontWeight(.bold)
            Text(appModel.portfolio.role)
                .font(.system(size: UIScreen.main.bounds.width*0.05)).fontWeight(.semibold)
            HStack(){
                Image(systemName: "location.fill")
                Text(appModel.portfolio.location).font(.system(size: UIScreen.main.bounds.width*0.045))
            }
            .padding(.top,10)
            .opacity(0.5)
            
            Text(appModel.portfolio.description)
                .font(.system(size: UIScreen.main.bounds.width*0.05)).opacity(0.7)
                .padding(.top,24)
                .lineSpacing(12)
            
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: AppModel()).padding(24)
        
        
    }
}
struct HeaderView_Previews_dark: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: AppModel()).padding(24).preferredColorScheme(.dark)
        
        
    }
}

