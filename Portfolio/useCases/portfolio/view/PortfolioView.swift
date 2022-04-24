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
                    
                    
                    
                }.padding(24)
                
            }
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView().colorScheme(.dark)
    }
}
