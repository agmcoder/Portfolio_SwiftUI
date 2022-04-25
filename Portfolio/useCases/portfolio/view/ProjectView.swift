//
//  ProjectView.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 25/4/22.
//

import SwiftUI

struct ProjectView: View {
    var project:Project
    
    
    var body: some View {
        VStack{
            Image(project.image)
                .resizable()
                .scaledToFit()
                .padding(.top,10)
                .padding(.horizontal,10)
                
            Text(project.name)
                .font(.title2)
                .padding(.vertical)
                
            
            
        }
        .frame(width:UIScreen.main.bounds.width-100 ,height: 200)
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
        GeometryReader{proxy in
        ProjectView(project:Project(id: UUID().uuidString, name: "prueba de projecto", image: "android") ).preferredColorScheme(.dark)
        }
    }
}
