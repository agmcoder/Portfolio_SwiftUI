//
//  projectDescriptionView.swift
//  Portfolio
//
//  Created by Alejandro Gómez Martín on 29/4/22.
//

import SwiftUI

struct ProjectDescriptionView: View {
    let project:Project
    
    var body: some View {
                VStack{
                ProjectDescriptionHeaderView(project: project)
                ProjectDescriptionBodyView(project: project)
                    
        }
                .navigationBarTitleDisplayMode(.inline)

    }
}

struct ProjectDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDescriptionView(project: AppModel().portfolio.projects[3])
    }
}
