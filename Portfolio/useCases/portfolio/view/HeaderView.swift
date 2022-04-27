//
//  HeaderView.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 24/4/22.
//

import SwiftUI

struct HeaderView: View {
    @Environment(\.colorScheme) var colorScheme
    var appModel:AppModel
    @Environment(\.width) var width

    
    
    var body: some View {
        
        VStack{
            Image("logo_agmcoder")
                .resizable()
                .scaledToFit()
                .frame(width: width*0.4, height: width*0.4)
                .padding(5)
                .background(Circle())
                .shadow(color:colorScheme == .light ? .black:.gray , radius: 10)




            
            Text(appModel.portfolio.name).font(.title2)
            Text(appModel.portfolio.role).font(.caption)
            HStack(){
                Image(systemName: "location.fill")
                    
                Text(appModel.portfolio.location).font(.footnote)
            }
            .padding(.top,10)
            .opacity(0.5)
            
            Text(appModel.portfolio.description).font(.system(size: 12)).opacity(0.7)
                .padding(.top,24)
                .lineSpacing(12)

        }
        
        
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{proxy in
            HeaderView(appModel: AppModel()).padding(24)

        }
    }
}
struct HeaderView_Previews_dark: PreviewProvider {
    static var previews: some View {
        GeometryReader{
            proxy in
            HeaderView(appModel: AppModel()).padding(24).preferredColorScheme(.dark)
        }
        
    }
}

