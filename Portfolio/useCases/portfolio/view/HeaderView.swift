//
//  HeaderView.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 24/4/22.
//

import SwiftUI

struct HeaderView: View {
    var appModel:AppModel
    
    
    
    var body: some View {
        
        VStack{
            Image("self")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .padding(5)
                .background(Circle())
                .shadow(color: .black, radius: 10)
            
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
        HeaderView(appModel: AppModel()).padding(24)
    }
}
