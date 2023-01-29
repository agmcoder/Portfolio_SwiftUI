//
//  githubButton.swift
//  Portfolio
//
//  Created by agmcoder on 29/1/23.
//

import SwiftUI

struct GithubButton: View {
    
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.width) var width

    var body: some View {
        Button(
            action:{
                guard let url = URL(string: ConfigurationUrlEnumString.githubProfile.url) else { return }
                UIApplication.shared.open(url)
            }
        ){
            if (colorScheme == .dark) {
                Image("github_white")
                    .resizable()
                    .scaledToFit()
                    .frame(width: width * 0.2, height: width * 0.2)
                    .padding(5)
                
            } else{
                Image("github_black")
                    .resizable()
                    .scaledToFit()
                    .frame(width: width * 0.2, height: width * 0.2)
                    .padding(5)
            }
        }
    }
}

struct githubButton_Previews: PreviewProvider {
    static var previews: some View {
        GithubButton()
    }
}
