//
//  ProjectView.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 25/4/22.
//

import SwiftUI

struct ProjectView: View {
    var project:Project
    @Environment(\.width) var width
    @Environment(\.heigth) var heigth


    
    
    var body: some View {
        VStack{
            ZStack{
                Rectangle().shadow( radius: 10, x: 0, y: 10)
                    .opacity(0.03)
                    .cornerRadius(30)
                
                VStack{
                    Image(project.image)
                        .resizable()
                        .scaledToFit()
                        .padding(.top,10)
                        .padding(.horizontal,10)
                    
                    Text(project.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.vertical,5)
                }
                
                
            }
            
                
            
                
            
            
        }
        .frame(width:width * 0.9 ,height: heigth * 0.3)

        .background(RoundedRectangle(cornerRadius: 12).opacity(0.075)).padding()
    }
}

struct ProjectView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectView(project:Project(id: UUID().uuidString, name: "prueba de projecto", image: "android") )
    }
}
struct ProjectView_Previews_dark: PreviewProvider {
    static var previews: some View {
        ProjectView(project:Project(id: UUID().uuidString, name: "prueba de projecto", image: "android") ).preferredColorScheme(.dark)
        
    }
}
