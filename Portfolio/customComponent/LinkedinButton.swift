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
    
    var body: some View {
        
        Button(
            action:{
                guard let url = URL(string: Configuration.url(for: "linkedin")) else { return }
                UIApplication.shared.open(url)
            }
        ){
            Image("linkedin")
                .resizable()
                .scaledToFit()
                .frame( width: width * 0.2, height: width * 0.2)
                .padding(5)
        }
    }
}

struct LinkedinButton_Previews: PreviewProvider {
    static var previews: some View {
        LinkedinButton()
    }
}
