//
//  ProjectView.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 25/4/22.
//
import Foundation
import SwiftUI
import Kingfisher

struct ProjectView: View {
    var project:Project
    @ObservedObject var appThemeVM=AppThemeViewModel()
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.width) var width
    @Environment(\.heigth) var heigth
    
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .shadow( radius: 10, x: 0, y: 10)
                    .foregroundColor(Color(UIColor.blue))
                    .opacity(colorScheme == .light ? 0.1 : 0.5)
                    .cornerRadius(30)
                
                VStack{
                    if( project.image.contains("http")){
                        KFImage(URL(string: project.image))
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                            .padding(.top,10)
                            .padding(.horizontal,10)
                        
                    }
                    else if(project.image.contains("gif")){
                       // it´s not implemented yet
                    }
                    else{
                        
                    Image(project.image)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .padding(.top,10)
                        .padding(.horizontal,10)
                    
                }
                    
                    Spacer()
                    
                    Text(project.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.vertical,5)
                        .padding(.horizontal)
                        .multilineTextAlignment(.center)
                    
                    
                }
            }
        }
        .frame(width:width * 0.9 ,height: heigth * 0.3)
        .padding()

    }
}

struct ProjectView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectView(project:Project( name: "prueba de projecto", image: "https://www.simpleswiftguide.com/wp-content/uploads/2019/11/linear-progress-bar-indicator-swiftui.png", description: "", githubUrl: "") )
    }
}
struct ProjectView_Previews_dark: PreviewProvider {
    static var previews: some View {
        ProjectView(project:Project( name: "prueba de projecto", image: "fingerprint", description: "", githubUrl: "") ).preferredColorScheme(.dark)
        
    }
}
