//
//  LinkedinButton.swift
//  Portfolio
//
//  Created by agmcoder on 29/1/23.
//

import SwiftUI

struct LinkedinButton: View {
    
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.width) var width
    @State var isShowingSheet = false
    
    var body: some View {
        
        Button(
            action:{
                isShowingSheet = true
            }
        ){
            Image("linkedin")
                .resizable()
                .scaledToFit()
                .frame( width: width * 0.2, height: width * 0.2)
                .padding(5)
        }
        .sheet(isPresented: $isShowingSheet){
            SFSafariViewWrapper(url: URL(string: ConfigurationUrlEnumString.linkedinProfile.url)!)
        }
    }
}

struct LinkedinButton_Previews: PreviewProvider {
    static var previews: some View {
        LinkedinButton()
    }
}
