//
//  ProjectsView.swift
//  RailwayDesktop
//
//  Created by Student on 4/13/22.
//

import SwiftUI
import WrappingHStack

struct Project : Hashable {
    var id: String
    var name: String
    var status: ProjectStatus
}

enum ProjectStatus {
    case success, failure, crash
}

struct ProjectsView: View {
    static let projects = [
        Project(id: "0nfjdeangusfhigrbhotu", name: "happy-path", status: .success),
        Project(id: "327r8u4rghtu5yhtre", name: "last-sneeze", status: .failure),
        Project(id: "hr72843qgh9e5674", name: "weird-gnat", status: .success),
        Project(id: "4fghu3w8onrjgirejhndt89ye45rugrt", name: "happy-path", status: .success),
        Project(id: "f34893g4h8hogupw49geghuth", name: "first-sneeze", status: .crash),
        Project(id: "h499o65385huite590hbuj5ert", name: "weird-listviews", status: .failure)
    ]
    var body: some View {
        VStack(alignment: .leading) {
            Text("Projects")
                .font(.title)
                .fontWeight(.bold)
                .frame(alignment: .topLeading)
                .padding()
            WrappingHStack(ProjectsView.projects, id:\.self, alignment: .leading) {
                ProjectCardView(project: $0).frame(width: 150, height: 50, alignment: .topLeading).padding(EdgeInsets(top: 30, leading: 5, bottom: 30, trailing: 5))
                    .onTapGesture {
                        
                    }
            }.frame(alignment: .topLeading).padding()
        }.frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .topLeading)
        .navigationTitle("Projects")
    }
}

struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsView()
            
    }
}
